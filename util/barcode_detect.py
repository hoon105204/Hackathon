import numpy as np
import cv2
import os

from keypoint_matching import keypointScore


def detect_barcode(img):
    # 수평 및 수직 방향으로 경계 강도 계산
    sharpx = cv2.Sobel(img, cv2.CV_64F, 1, 0, ksize=-1)
    sharpx = cv2.convertScaleAbs(sharpx)
    sharpy = cv2.Sobel(img, cv2.CV_64F, 0, 1, ksize=-1)
    sharpy = cv2.convertScaleAbs(sharpy)

    # 수평 방향 기준 바코드 후보 영역 검출
    dstx = cv2.subtract(sharpx, sharpy)
    dstx = cv2.GaussianBlur(dstx, (9, 7), 0)
    th, dstx = cv2.threshold(dstx, 100, 200, cv2.THRESH_BINARY)

    kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (61, 9))
    dstx = cv2.morphologyEx(dstx, cv2.MORPH_CLOSE, kernel)
    dstx = cv2.erode(dstx, kernel, iterations=3)
    dstx = cv2.dilate(dstx, kernel, iterations=3)

    _, contours, hierarchy = cv2.findContours(dstx, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    if contours:
        maxx = sorted(contours, key=cv2.contourArea, reverse=True)[0]
    else:
        maxx = np.array([[0, 0], [0, 0], [0, 0], [0, 0]])

    # 수직 방향 기준 바코드 후보 영역 검출
    dsty = cv2.subtract(sharpy, sharpx)
    dsty = cv2.GaussianBlur(dsty, (7, 9), 0)
    th, dsty = cv2.threshold(dsty, 100, 200, cv2.THRESH_BINARY)

    kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (9, 61))
    dsty = cv2.morphologyEx(dsty, cv2.MORPH_CLOSE, kernel)
    dsty = cv2.erode(dsty, kernel, iterations=3)
    dsty = cv2.dilate(dsty, kernel, iterations=3)

    (_, contours, hierarchy) = cv2.findContours(dsty, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    if not contours:
        maxy = np.array([[0, 0], [0, 0], [0, 0], [0, 0]])
    else:
        maxy = sorted(contours, key=cv2.contourArea, reverse=True)[0]

    # 수평 및 수직 방향 연결 요소 크기 비교
    if len(maxx) > len(maxy):
        rect = cv2.minAreaRect(maxx)
    else:
        rect = cv2.minAreaRect(maxy)
    box = cv2.boxPoints(rect)
    box = np.int0(box)
    if box[2][0] > box[0][0]:
        temp = box[2][0]
        box[2][0] = box[0][0]
        box[0][0] = temp

    return box


if __name__ == '__main__':

    verbose = True

    cap = cv2.VideoCapture("http://211.106.17.120:9496/?action=stream")
    width = cap.get(cv2.CAP_PROP_FRAME_WIDTH)
    height = cap.get(cv2.CAP_PROP_FRAME_HEIGHT)

    while cap.isOpened():
        ret, image = cap.read()

        if not ret:
            continue
        gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

        # 바코드 검출
        points = detect_barcode(gray)

        # 바코드 영역 표시
        box_image = cv2.rectangle(image, (points[2][0], points[2][1]), (points[0][0], points[0][1]), (0, 255, 0), 2)

        detect_image = image[points[0][0]:points[0][1], points[2][0]:points[2][1]]  # 검출된 바코드 영역

        if len(detect_image):
            keypoint_obj = keypointScore(detect_image)

            best_image_path = ''
            best_kps = -1

            for barcode in os.listdir('./barcode'):
                tmp_kps, tmp_path = keypoint_obj.getKPS('./barcode/'+barcode)
                if best_kps < tmp_kps:
                    best_kps = tmp_kps
                    best_image_path = tmp_path
            print(best_image_path)

        if verbose:
            cv2.imshow("image", box_image)

        key = cv2.waitKey(1)
        if key == ord('q'):
            break

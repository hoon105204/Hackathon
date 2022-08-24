import cv2


class keypointScore:

    def __init__(self, image):
        self.image = image

        FLANN_INDEX_KDTREE = 0
        index_params = dict(algorithm=FLANN_INDEX_KDTREE, trees=5)
        search_params = dict(checks=50)
        self.flann = cv2.FlannBasedMatcher(index_params, search_params)

    def getKPS(self, img_path, threshold=0.3):
        sift = cv2.xfeatures2d.SIFT_create()
        # orb = cv2.ORB_create()
        img = cv2.imread(img_path)

        kp1, des1 = sift.detectAndCompute(self.image, None)
        kp2, des2 = sift.detectAndCompute(img, None)
        if des2 is None:
            kp2, des2 = sift.detectAndCompute(self.image, None)
        elif des1 is None:
            kp1, des1 = sift.detectAndCompute(img, None)

        # kp1, des1 = orb.detectAndCompute(img1, None)
        # kp2, des2 = orb.detectAndCompute(img2, None)

        matches = self.flann.knnMatch(des1, des2, k=2)
        # bf = cv2.BFMatcher()
        # matches = bf.knnMatch(des1, des2, k=2)

        good = []
        for m, n in matches:
            if m.distance < threshold * n.distance:
                good.append([m])

        return len(good), img_path

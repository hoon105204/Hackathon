import cv2


class CamController:
    def __init__(self):
        self.cam_object = None
        self.cam_on = False

    def cam_onoff(self, on=True, cam_num=0):
        if on:
            self.cam_object = cv2.VideoCapture(cam_num)
            self.cam_on = True
        else:
            self.cam_object.release()
            self.cam_on = False

    def read_img(self):
        if self.cam_on:
            return self.cam_object.read()

    def set_resolution(self, width=640, height=480):
        if self.cam_on:
            self.cam_object.set(cv2.CAP_PROP_FRAME_WIDTH, width)
            self.cam_object.set(cv2.CAP_PROP_FRAME_HEIGHT, height)

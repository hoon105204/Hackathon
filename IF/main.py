import random
import sys
import webbrowser
from tkinter.ttk import *
from tkinter import *
from PIL import ImageTk
## from picamera import PiCamera
from time import sleep

### 카메라 이미지 구현 ###


#######################

TRANSCOLOUR = 'gray'
url = "http://54.180.171.70:8787/"

def GrabInfo():
    Infodict = dict()

    Infodict["WorkID"] = "20220820-0001"
    Infodict["ItemLoc"] = "AB030531"
    Infodict["ItemCode"] = "HC001-E"
    Infodict["ItemID"] = "FPAAAAA"

    return Infodict

def GrabID():
    return "Kihwi"

def CompareID(CurrentID):
    grabID = GrabID()
    if CurrentID != grabID:
        grabID = GrabID()
        if CurrentID != grabID:
            return "불일치"
    return "일치"

class CameraImage():
    def __init__(self):
        self.root = Tk()
        self.OpenCamera()

    def OpenCamera(self):
        self.root.title("Warehouse Worker AR Glass")
        self.root.geometry("1920x1080")
        self.root.resizable(False, False)

        ### 투명도 조절
        self.root.wm_attributes('-transparentcolor', TRANSCOLOUR)

        ### 작업 대상 ID 화면
        canvas = Canvas(self.root, width = 300, height = 220, background = TRANSCOLOUR)
        canvas.place(x=10, y=10)

        canvas.create_rectangle(0, 0, 300, 220, fill='black', outline='white', width = 3)

        canvas.create_text(150, 30, text="작업 대상 확인 (                   )", fill='white', font=('Helvetica 15 bold'))
        canvas.create_text(50, 90, text="작업ID : ", fill='white', font=('Helvetica 15 bold'))
        canvas.create_text(60, 120, text="제품위치 : ", fill='white', font=('Helvetica 15 bold'))
        canvas.create_text(60, 150, text="제품코드 : ", fill='white', font=('Helvetica 15 bold'))
        canvas.create_text(50, 180, text="제품ID : ", fill='white', font=('Helvetica 15 bold'))
        compres = CompareID("Kihwi")

        if compres == "일치":
            Info = GrabInfo()
            canvas.create_text(220, 30, text="일치", fill='purple', font=('Helvetica 15 bold'))
            canvas.create_text(190, 90, text=Info["WorkID"], fill='white', font=('Helvetica 15 bold'))
            canvas.create_text(190, 120, text=Info["ItemLoc"], fill='white', font=('Helvetica 15 bold'))
            canvas.create_text(190, 150, text=Info["ItemCode"], fill='white', font=('Helvetica 15 bold'))
            canvas.create_text(190, 180, text=Info["ItemID"], fill='purple', font=('Helvetica 15 bold'))
        else:
            canvas.create_text(220, 30, text="불일치", fill='red', font=('Helvetica 15 bold'))
            canvas.create_text(190, 90, text="Invalid", fill='red', font=('Helvetica 15 bold'))
            canvas.create_text(190, 120, text="Invalid", fill='red', font=('Helvetica 15 bold'))
            canvas.create_text(190, 150, text="Invalid", fill='red', font=('Helvetica 15 bold'))
            canvas.create_text(190, 180, text="Invalid", fill='red', font=('Helvetica 15 bold'))

    def CloseCamera(self):
        self.root.destroy()


class GlassControlPanel():
    def __init__(self):
        self.app = None

        self.root = Tk()
        self.root.geometry("320x200")
        self.root.title("AR Glass Control Panel")
        self.root.resizable(False, False)

        camera_on = Button(self.root, text="Camera On", command=self.openCamera)
        camera_on.grid(column=0, row=0)
        camera_off = Button(self.root, text="Camera Off", command=self.CloseCamera)
        camera_off.grid(column=0, row=2)

        btn_0 = Button(self.root, text="[송수신] 작업확인 요청")
        btn_0.grid(column=3, row=0)
        btn_1 = Button(self.root, text="[송신] 세부작업시작시")
        btn_1.grid(column=3, row=1)
        btn_2 = Button(self.root, text="[송신] 세부작업완료시")
        btn_2.grid(column=3, row=2)
        btn_3 = Button(self.root, text="[송신] AR판정결과")
        btn_3.grid(column=3, row=3)

        self.root.mainloop()

    def openCamera(self):
        self.app = CameraImage()

    def CloseCamera(self):
        self.app.CloseCamera()

def main():
    ctrlpanel = GlassControlPanel()

if __name__ == "__main__":
    main()



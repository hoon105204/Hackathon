import random
import sys
import tkinter.messagebox
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

#- (정보요청) 버튼0 : [송수신] 작업확인 요청 ⇒ API0호출
#    - param : 처음여부, 비정상여부
#    - return : 현재작업lot, 작업세부정보, 제품위치정보, 제품id, 작업완료기한
#- (작업시작) 버튼1 : [송신] 세부작업시작시 ⇒ API1호출
#    - param : 작업세부id, 제품id, 작업시작시간, 작업시작위치
#    - return : void
#- (작업완료) 버튼2 : [송신] 세부작업완료시 ⇒ API2호출
#    - param : 작업세부id, 제품id, 작업완료시간, 작업완료위치
#    - return : void
#- (검수버튼) 버튼3 : [송신] (옵션) AR판정결과 ⇒ API3호출
#    - param : (검수작업id), 판정일시, 판정input, 판정결과, 판정품id
#    - return : void

def GrabInfo():
    Infodict = dict()

    Infodict["WorkID"] = "20220820-0001"
    Infodict["DetailID"] = ["20220820-0001001", "20220820-0001002", "20220820-0001003"]
    Infodict["ItemLoc"] = ["AB030531", "AB030532", "AB030533"]
    Infodict["ItemCode"] = ["HC001-E", "HC001-F", "HC001-G"]
#   Infodict["ItemID"] = "FPAAAAA"

    return Infodict

class CameraImage():
    def __init__(self):
        self.root = Tk()
        self.root.title("Warehouse Worker AR Glass")
        self.root.geometry("1920x1080")
        self.root.resizable(False, False)

        ### 투명도 조절
        self.root.wm_attributes('-transparentcolor', TRANSCOLOUR)
        self.canvas = Canvas(self.root, width = 400, height = 250, background='white')
        self.canvas.place(x=10, y=10)

        self.worklist = dict()
        self.currentIdx = 0

        self.OpenCamera()

    def OpenCamera(self):
        ### 작업 대상 ID 화면
        self.canvas.create_rectangle(0, 0, 400, 250, fill='black', outline='white', width=3)
        self.canvas.create_text(150, 30, text="작업 대상 확인 (                   )", fill='white', font=('Helvetica 15 bold'))
        self.canvas.create_text(50, 90, text="작업ID : ", fill='white', font=('Helvetica 15 bold'))
        self.canvas.create_text(70, 120, text="세부작업ID : ", fill='white', font=('Helvetica 15 bold'))
        self.canvas.create_text(60, 150, text="제품위치 : ", fill='white', font=('Helvetica 15 bold'))
        self.canvas.create_text(60, 180, text="제품코드 : ", fill='white', font=('Helvetica 15 bold'))
        self.canvas.create_text(50, 210, text="제품ID : ", fill='white', font=('Helvetica 15 bold'))

#        if False:
#            self.canvas.create_text(220, 30, text="일치", fill='purple', font=('Helvetica 15 bold'))
#            self.canvas.create_text(190, 210, text=Info["ItemID"], fill='purple', font=('Helvetica 15 bold'))
#        else:
#            self.canvas.create_text(220, 30, text="불일치", fill='red', font=('Helvetica 15 bold'))
#            self.canvas.create_text(190, 210, text="Invalid", fill='red', font=('Helvetica 15 bold'))

    def CloseCamera(self):
        self.root.destroy()

    def GetWorkDetail(self, Info):
        self.worklist = Info
        self.currentIdx = 0
        self.canvas.create_text(220, 90, text=self.worklist["WorkID"], fill='white', font=('Helvetica 15 bold'))

    def StartWork(self):
        self.canvas.delete('label')
        self.canvas.create_text(220, 120, text=self.worklist["DetailID"][self.currentIdx], fill='white', font=('Helvetica 15 bold'), tags='label')
        self.canvas.create_text(220, 150, text=self.worklist["ItemLoc"][self.currentIdx], fill='white', font=('Helvetica 15 bold'), tags='label')
        self.canvas.create_text(220, 180, text=self.worklist["ItemCode"][self.currentIdx], fill='white', font=('Helvetica 15 bold'), tags='label')

    def FinishWork(self):
        if self.currentIdx + 1 == len(self.worklist["DetailID"]):
            tkinter.messagebox.showerror(title="Error", message="No more work left")
        else:
            self.currentIdx += 1

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

        btn_0 = Button(self.root, text="[송수신] 작업확인 요청", command=self.RequestWorkConfirm)
        btn_0.grid(column=3, row=0)
        btn_1 = Button(self.root, text="[송신] 세부작업시작시", command=self.StartWork)
        btn_1.grid(column=3, row=1)
        btn_2 = Button(self.root, text="[송신] 세부작업완료시", command=self.FinishWork)
        btn_2.grid(column=3, row=2)
        btn_3 = Button(self.root, text="[송신] AR판정결과")
        btn_3.grid(column=3, row=3)

        self.root.mainloop()

    def openCamera(self):
        self.app = CameraImage()

    def CloseCamera(self):
        if self.app == None:
            tkinter.messagebox.showerror(title="Error", message="There are no Camera Display")
        else:
            self.app.CloseCamera()

    def RequestWorkConfirm(self):
        if self.app == None:
            tkinter.messagebox.showerror(title="Error", message="There are no Camera Display")
        else:
            Info = GrabInfo()
            self.app.GetWorkDetail(Info)

    def StartWork(self):
        if self.app == None:
            tkinter.messagebox.showerror(title="Error", message="There are no Camera Display")
        else:
            self.app.StartWork()

    def FinishWork(self):
        if self.app == None:
            tkinter.messagebox.showerror(title="Error", message="There are no Camera Display")
        else:
            self.app.FinishWork()

def main():
    ctrlpanel = GlassControlPanel()

if __name__ == "__main__":
    main()



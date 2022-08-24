import random
import sys
import tkinter.messagebox
import webbrowser
from tkinter.ttk import *
from tkinter import *
from PIL import ImageTk, Image
import requests
## from picamera import PiCamera
from time import sleep
import json

TRANSCOLOUR = 'gray'
url = "http://54.180.171.70:8787/api/button"

barcode = ["237088620509893", "920765599842067",
           "977459811004164", "803170803284142",
           "344988208311735", "109202095302418",
           "494304811204068", "548340147302383",
           "586729475334176", "692675856146625"]

bar = ["237088620509893", "920765599842067"]

code = ["237088620509893", "237088620509894", "237088620509896", "920765599842067", "920765599842068", "920765599842060",
        "977459811004164", "977459811004165", "977459811004166", "803170803284142", "803170803284143", "803170803284144",
        "344988208311735", "344988208311736", "344988208311737", "109202095302418", "109202095302419", "109202095302417",
        "494304811204068", "494304811204069", "494304811204061", "548340147302383", "548340147302384", "548340147302385",
        "586729475334176", "586729475334177", "692675856146625"]

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

#        imgObj = PhotoImage(file=r"D:\Kurly\IF\kurly.bmp")
#        imgLabel = Label(self.root, image=imgObj)
#        imgLabel.pack()

#        img_path = Image.open('D:\Kurly\IF\kurly.bmp')
#        imgObj = ImageTk.PhotoImage(img_path, master=self.canvas)
#        imgLabel = Label(self.root, image=imgObj)
#        imgLabel.pack()

        self.worklist = dict()
        self.currentIdx = 0
        self.currentStatus = True
        self.JudgeTable = None
        self.Donelist = []

        self.OpenCamera()

    def OpenCamera(self):
        ### 작업 대상 ID 화면
        self.canvas.create_rectangle(0, 0, 400, 250, fill='black', outline='white', width=3)
        self.canvas.create_text(150, 30, text="작업 대상 확인 (                   )", fill='white', font=('Helvetica 15 bold'))
        self.canvas.create_text(50, 90, text="작업ID : ", fill='white', font=('Helvetica 15 bold'))
        self.canvas.create_text(70, 120, text="세부작업ID : ", fill='white', font=('Helvetica 15 bold'))
        self.canvas.create_text(60, 150, text="제품위치 : ", fill='white', font=('Helvetica 15 bold'))
        self.canvas.create_text(60, 180, text="제품코드 : ", fill='white', font=('Helvetica 15 bold'))
        self.canvas.create_text(70, 210, text="제품 Name : ", fill='white', font=('Helvetica 15 bold'))

    def GetLoc(self, ItemCode):
        loc_dict = self.worklist['location']
        for loc in loc_dict:
            if loc["PROD_ID"] == ItemCode:
                return loc["LOC_ID"]

    def CloseCamera(self):
        self.root.destroy()

    def GetWorkDetail(self, Info):
        self.currentStatus = True
        self.worklist = Info
        self.currentIdx = 0
        WorkID = self.worklist["TB_LO_WORK"]["wrk_ID"]
        self.canvas.create_text(220, 90, text=WorkID, fill='white', font=('Helvetica 15 bold'))

        self.canvas.delete('label')
        self.canvas.delete('result')

    def StartWork(self):
        if self.currentStatus == False:
            tkinter.messagebox.showerror(title="Error", message="Current Work is not done yet!")
            return

        self.currentStatus = False

        self.canvas.delete('result')
        self.canvas.delete('label')
        if self.currentIdx == len(self.worklist["TB_LO_WORKDTL"]):
            tkinter.messagebox.showerror(title="Error", message="No more work left")
        else:
            DetailID = self.worklist["TB_LO_WORKDTL"][self.currentIdx]["DTL_ID"]
            ItemCode = self.worklist["TB_LO_WORKDTL"][self.currentIdx]["PROD_ID"]
            WorkID = self.worklist["TB_LO_WORK"]["wrk_ID"]
            Loc = self.GetLoc(ItemCode)
            self.canvas.create_text(220, 120, text=DetailID, fill='white', font=('Helvetica 15 bold'), tags='label')
            self.canvas.create_text(220, 150, text=Loc, fill='white', font=('Helvetica 15 bold'), tags='label')
            self.canvas.create_text(220, 180, text=ItemCode, fill='white', font=('Helvetica 15 bold'), tags='label')

            button2 = url + "2"
            order = ""
            if self.currentIdx == 0:
                order = "first"

            data = {"dtl_id":DetailID, "wrk_id":WorkID, "dtl_ord": order}
            response = requests.post(button2, json=data)
            print("button2 : " + str(response))

    def FinishWork(self):
        if self.currentStatus == False:
            tkinter.messagebox.showerror(title="Error", message="Current Work is not done yet!")
            return

        DetailID = self.worklist["TB_LO_WORKDTL"][self.currentIdx]["DTL_ID"]
        WorkID = self.worklist["TB_LO_WORK"]["wrk_ID"]

        order = ""
        self.currentIdx += 1
        if self.currentIdx == len(self.worklist["TB_LO_WORKDTL"]):
            order = "last"

        button3 = url + "3"
        data = {"dtl_id":DetailID, "wrk_id":WorkID, "stk_id":self.Donelist, "dtl_ord": order}
        response = requests.post(button3, json=data)
        print("button3 : " + str(response))

    def DetectBarcode(self):
        if self.currentStatus == True:
            tkinter.messagebox.showerror(title="Error", message="Already Found Right Item")
            return

        idx = random.randrange(2)
        codeInfo = bar[idx]

        data = {'barcode': codeInfo}
        button4 = url + "4"
        response = requests.post(button4, json=data)
        print("button4 : " + str(response))

        Info = json.loads(response.text)
        ProdID = Info["PROD_ID"]
        ItemCode = self.worklist["TB_LO_WORKDTL"][self.currentIdx]["PROD_ID"]
        DoneID = Info["STK_ID"]

        self.canvas.delete('result')
        if ProdID == ItemCode:
            self.Donelist.append(DoneID)
            ItemName = self.worklist["TB_LO_WORKDTL"][self.currentIdx]["PROD_NM"]
            self.canvas.create_text(220, 30, text="일치", fill='purple', font=('Helvetica 15 bold'), tags='result')
            self.canvas.create_text(220, 210, text=ItemName, fill='purple', font=('Helvetica 15 bold'), tags='result')
            self.currentStatus = True
        else:
            self.canvas.create_text(220, 30, text="불일치", fill='red', font=('Helvetica 15 bold'), tags='result')
            self.canvas.create_text(220, 210, text="Invalid", fill='red', font=('Helvetica 15 bold'), tags='result')


    def SendResult(self):
        return self.JudgeTable

class GlassControlPanel():
    def __init__(self):
        self.app = None
        self.Info = None

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
        btn_3 = Button(self.root, text="[송신] AR판정결과", command=self.JudgeResult)
        btn_3.grid(column=3, row=3)

        barcode_read = Button(self.root, text="바코드 인식", command=self.DetectBarcode)
        barcode_read.grid(column=5, row=0)

        self.root.mainloop()

    def openCamera(self):
        if self.app == None:
            self.app = CameraImage()
        else:
            tkinter.messagebox.showerror(title="Error", message="There is On-line Camera Session")

    def CloseCamera(self):
        if self.app == None:
            tkinter.messagebox.showerror(title="Error", message="There is no Camera Display")
        else:
            self.app.CloseCamera()

    def DetectBarcode(self):
        if self.app == None:
            tkinter.messagebox.showerror(title="Error", message="There is no Camera Display")
        else:
            self.app.DetectBarcode()

    def RequestWorkConfirm(self):
        if self.app == None:
            tkinter.messagebox.showerror(title="Error", message="There is no Camera Display")
        else:
            button1 = url + "1"

            data = {'dvc_id': 'DV0004'}
            RequestWork = requests.post(button1, json=data)

            self.Info = json.loads(RequestWork.text)
            self.app.GetWorkDetail(self.Info)

    def StartWork(self):
        if self.app == None:
            tkinter.messagebox.showerror(title="Error", message="There is no Camera Display")
        else:
            self.app.StartWork()

    def FinishWork(self):
        if self.app == None:
            tkinter.messagebox.showerror(title="Error", message="There is no Camera Display")
        else:
            self.app.FinishWork()

    def JudgeResult(self):
        if self.app == None:
            tkinter.messagebox.showerror(title="Error", message="There is no Camera Display")
        else:
            self.Info = self.app.SendResult()
            if self.Info == None:
                tkinter.messagebox.showerror(title="Error", message="There is no Judgement to send")


def main():
    ctrlpanel = GlassControlPanel()

if __name__ == "__main__":
    main()

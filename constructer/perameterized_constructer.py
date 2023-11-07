class Student:
    __fName__ : str ="#"
    __lName__  :str = "#"
    def __init__(self,fName,lName)->str:
        self.__fName__ = fName
        self.__lName__ = lName
    def FullName(self)->str:
        print(self.__fName__ +" "+ self.__lName__)
emp =Student("MohanSai","Adavikayala")
emp.FullName()
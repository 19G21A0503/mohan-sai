class Employee():
    __amt__ = int(input("Enter The Salary: "))
    def salary(self)->float:
        return self.__amt__ * 12

class ContractEmployee():
    __hrpay__ = int(input("Enter Your Expected Hourly Payment: "))
    __hr__ = int(input("Enter Your Working Hours: "))
    def sai(self)-> float:
        return self.__hrpay__ * self.__hr__

emp = ContractEmployee()
print(emp.sai())
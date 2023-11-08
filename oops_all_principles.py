class Student():
    def __init__(self, firstName, lastName, marks, schoolAddress):
        self.__firstName__ = firstName
        self.__lastName__ = lastName
        self.__marks__ = marks
        self.__schoolAddress__ = schoolAddress

    def getFullName(self) -> str:
        return f'FullName: {self.__firstName__} {self.__lastName__}'

    def overallMarks(self) -> float:
        pass

    def setAddress(self, address):
        self.__schoolAddress__ = address

    def getAddress(self):
        return self.__schoolAddress__


class RegularStudent(Student):
    def __init__(self, firstName, lastName, marks, schoolAddress):
        super().__init__(firstName, lastName, marks, schoolAddress)
        self.__overallMarks__ = 432

        def SubwiseMarks(self) -> int:
            return self.__overallMarks__ / 6

    def SubwiseMarks(self) -> int:
        return self.__overallMarks__ / 6


class OpenStudent(Student):
    def __init__(self, firstName, lastName, marks, schoolAddress):
        super().__init__(firstName, lastName, marks, schoolAddress)
        self.__overallMarks__ = 545

    def SubwiseMarks(self) -> int:
        return self.__overallMarks__ / 6


stu = RegularStudent("MOHAN", "SAI", 90, "Viswam, KBHP Colony, Hyderabad, Telangana")
name = stu.getFullName()
print(name)
stu.setAddress("KBHP Colony, Hyderabad, Telangana")
address = stu.getAddress()
print(address)
print(stu.SubwiseMarks())

stu2 = OpenStudent("Sai", "Mohan", 85, "Viswam, KBHP Colony, Hyderabad, Telangana")
name2 = stu2.getFullName()
print(name2)
stu2.setAddress("KBHP Colony, Hyderabad, Telangana")
address2 = stu2.getAddress()
print(address2)
print(stu2.SubwiseMarks())

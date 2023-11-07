class Calculation:
    def __add__(self, a:int, b:int=0):
        print(a+b)

    def __add__(self, a: int, b: int, c:int = 0):
        print(a + b + c)

    def __data__(self, a: str, b: str = 0):
        print(a + b)

    def __date__(self, a: str, b: str, c:str=2):
        print(a + b + c)


cal = Calculation()
cal.__add__(1,2)
cal.__add__(3, 4, 5)
cal = Calculation()
cal.__data__("Mohan", "Sai")
cal.__date__("Mohan", "Sai", "Adavikayala")
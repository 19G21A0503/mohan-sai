class Mohan():
    n: int = 503

    def getValue(self):
        return self.n

sai = Mohan()
sai.a = 557
print(id(sai))
print(sai.getValue())

Mohan.a = 521
print(id(Mohan))
print(sai.getValue())

sai = Mohan()
print(sai.getValue())
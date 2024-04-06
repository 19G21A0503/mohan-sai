
#Complex
#Implicit
a = 1 +4j
b = 2 + 2j
print( a + b )
print(type(a + b))

#Explicit
a = complex(1 + 3j)
a = complex(2 + 3j)
print(a + b)
print(type(a + b))
print(a.imag)
print(a.real)
print(a, b)

#Variable Annotation
a: complex = 2 + 4j
b: complex = 3 + 2j
print(a + b)
print(type(a + b))
print(a.imag)
print(a.real)
print(a, b)


#binary
a = complex(True)
print(a)
print(type(a))

#Octal
a = complex(0o1234)
print(a)
print(type(a))

#HexaDecimal
a = complex(0xface)
print(a)
print(type(a))
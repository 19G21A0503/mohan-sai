n = int(input("Enter The Number Of Rows: "))
for i in range(1,n+1):
    for j in range(1,i+1):
        print(i,end="")
    print()


n = int(input("Enter The Number Of Rows: "))
for i in range(1,n+1):
    for j in range(1,i+1):
        print(i,end=" ")
    print()


n = int(input("Enter The Number Of Rows: "))
a = 1
b = 2
for i in range(n):
    for j in range(1,b):
        print(a,end=" ")
        a = a + 1
    print(" ")
    b= b + 1
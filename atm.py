
a = int(input("Account number: "))
b = int(input("Enter pinnum: "))
if a == 9876543210 and b == 9876 :
    print("Account Number is valid: ")
    print(" Enter 1 For Money Withdraw")
    print(" Enter 2 For Balance Enquiry")
    c = int(input("Choose The Number: "))
    if (c==1):
        d = int(input("Enter The Amount: "))
        if (d>200000):
            print("Insufficient Balance")
            print("Please Check Your Bank Balance")
        else:
            c = (200000-d)
            print("Amount Debited")
            print("your Bank Balance :",c)
            print("Thank You For Trusing Us.")
    elif(c==2):
        print("Your Bank Balance = 200000")
        print("Thank You For Trusing Us.")
    else:
        print("Select The Valid Option")
        print("Thank You For Trusing Us.")
else:
    print("Invalid Account Numbet And PIN Number")
    print("Please Enter The Valid Details.")
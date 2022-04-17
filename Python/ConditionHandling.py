#if else statement
#take a number from user

inputNumber=input("Please enter your number")


if(int(inputNumber)>100):
    print("NUmber is GREATER")
else:
    print("number is Smaller")


#Multiple Conditon Handling
#take 1 input
#check number is neagtive-display negative number, check if its 0 then display 0
#if number is + then check its a even number or odd number
inputNumber=int(inputNumber)

# if(inputNumber<0):
#     print("This is Negative Number")
# elif(inputNumber==0):
#     print("NUmber is zero")
# elif(inputNumber%2==0):
#     print("This is Even number")
# elif(inputNumber%2==1):
#     print("This is Odd number")
# else:
#     print("Not a valid number")

#Nested loops

# if(inputNumber>=0):
#     if(inputNumber%2==0):
#         print("This is EVEN number")
#     else:
#         print("This is ODD number")
# else:
#     print("Not a valid number")


#Condition Handling with logical OR
#number is<0 or >100 in both cases I need to display its an invalid number

# if(inputNumber>100 or inputNumber<0):
#     print("This is Invalid Number")
# else:
#     print("This is Valid number")


#Condition Handling with logical and
#if number is positive and divisble by 2 then I need to place its a valid number

# if(inputNumber>=0 and inputNumber%2==0):
#     print("This is Valid number")
# else:
#     print("This is Invalid Number")


#condition handling with not operations

# if(inputNumber!=100):
#     print("This is Valid number")                                               #not valid program check once
# else:
#     print("This is a Invalid Number")
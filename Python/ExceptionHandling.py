#syntax for excetption handling

try:
    user_input1=input('please enter first number')
    user_input2=input('please enter second number')
    c=int(user_input1) + int(user_input2)
    print("the value is " + str(c))
except:
    print('your input is incorrect, please enter correct data')

#this is code I want to execute always at the end
finally:
    print('this code is for addition of integers only')

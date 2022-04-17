def laptop():
    print('linux is the best OS')

#for calling function
laptop()

#REQUIRED ARGUMETNS
def takeInput(a,b):
    c=a+b
    print("sum of value" + str(c))
takeInput(10,20)

#KEYWORD ARGUMENTS
takeInput(b=100,a=90)

#DEFAULT ARGUMENTS
def argument(a,b=90):
    c=a+b
    print(c)

argument(120)       #automatically goes to a beacuse b is already defined

#FUNCTION TAKING SOME ARGUMENT AND RETURN VALUE AS WELL
def multiply(a,b):
    c=a+b
    return c
def addition(a,b):
    c=a+b
    print(c)
x=multiply(4,20)
addition(x,10)

#FUCNTION NO ARGUMENT BUT RETRUN VALUE
def welcome():
    'this is comment line in fucntion, because this is first line'
    a='welcome to linux world'
    return  a
c=welcome()
print(c)
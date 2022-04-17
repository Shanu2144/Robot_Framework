class A:
    #fucntion with no arguments and no return value
    def hello(self):
        print('hello world')
    #function which take 2 arguments,sum value as well
    def sum(self,a,b):
        c=a+b
        print('Sum is -' + str(c))
    #function which take arguments and return value as well
    def mul(self,a,b):
        c=a*b
        return c

obj=A()
obj.hello()
obj.sum(20,30)
k=obj.mul(20,20)
print(k)

email='facebook.com'

#repalce part of string
print(email.replace('.com','.in'))

#find string into another string
print(email.find('k'))

#split string on behalf of splitter
email2='this is a social site'
email3=email+email2
list=email3.split()

print(len(list))
print(list)

#compare 2 string

if(email==email2):
    print('comapred')
else:
    print("not comapred")

#REVERSE MY STRING
a=''
l=len(email)
for i in range((l-1),-1, -1):
    a=a+email[i]

print(a)

#PALINDROME NUMBER
if(email==a):
    print('palindrome')
else:
    print('not palindrome')

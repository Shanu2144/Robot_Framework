
list=[1,2,45,5431,'facebook','sdfr124']

#FETCHING DATA BY INDEC=X VALUE
print(list[1])

#RANGE OF INDEX
print(list[1:3])

#ADD SOMETHING IN LIST
list.insert(3,'ABCD')
print(list)

#REMOVE SOMETHING FROM LIST
list.remove('ABCD')
print(list)

#FIND LENGHT OF LIST
print(len(list))

#COMAPRE 2 LIST;SAME OR NOT
list2=[23,45,0,'kij234',224]
# cmp(list,list2)  works only in python 2

#CONCATENATE TWO LISTS
list3=list+list2
print(list3)

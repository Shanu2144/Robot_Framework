
tuple=(12,12,12,34,'tesing',45.32)

#COUNT NO OF TIMES A VALUE DISPALYED
print(tuple.count(12))

#FIND INDEX OF ANY VALUE
print(tuple.index(34))

#MERGE TWO TUPLES
tuple2=(54,890,89.00,'world')
tuple3=tuple+tuple2
print(tuple3)

#DISPLAY ALL VALUES IN TUPLES
for i in tuple:
    print(i)

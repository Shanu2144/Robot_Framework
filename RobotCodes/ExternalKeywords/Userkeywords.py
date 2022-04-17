import os

def create_folder():
    os.mkdir('D:\\linux')

def sub_create_folder():
    os.mkdir('D:\\Linux\\RedHat')

def create(foldername):
    os.mkdir('D:\\'+ foldername)

def subcreate(subfoldername):
    os.mkdir('D:\\Linux\\'+ subfoldername)

def concatenate_two_values(val1,val2):
    val3=val1+" " + val2
    return val3

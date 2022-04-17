#Import package
import openpyxl

#load workbook
wk=openpyxl.load_workbook('D:\\Test.xlsx')
print(wk.sheetnames)
#current sheet name
print('active sheet is ' + wk.active.title)

#create object of any sheet on which you want to work
sh=wk['Sheet1']
print(sh.title)

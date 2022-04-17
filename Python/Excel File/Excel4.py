#WRITE DATA TO EXCEL SHEET

#import pacakage
import openpyxl
wk=openpyxl.Workbook()
sh=wk.active
sh.title='Linux'            #change the name with creating object of sheet
print(sh.title)

sh['A4'].value='linux is the best Kernel'       #entering value at the specific place

#2nd sheet is created
wk.create_sheet(title='Redhat')             #create another sheet in same workbook
sh1=wk.active
sh1=wk['Redhat']
sh1['A3']='123456789'

#remove sheet
# wk.remove(wk['Linux'])

#saving
wk.save('D:\\Linux.xlsx')               #saving location

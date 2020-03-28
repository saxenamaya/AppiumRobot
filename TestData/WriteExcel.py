import openpyxl

wk = openpyxl.Workbook()
sh = wk.active
sh.title="HelloWorld"
# print(sh.title)
sh['A4'].value = "TestingData1"

# Create new sheet
wk.create_sheet(title="HelloWorld1")
sh1 = wk['HelloWorld1']
sh1['A3'].value = "TestingData2"

# Remove sheet
# wk.remove(wk['HelloWorld1'])

wk.save("D:\\WriteExcel.xlsx")


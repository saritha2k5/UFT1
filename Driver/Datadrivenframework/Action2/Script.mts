'Call demo

'datatable.AddSheet("dd")

'msgbox Environment("TestDataPath")

Set objexcel=Createobject("Excel.Application")
'objexcel.visible=true
Set objworkbook=objexcel.Workbooks.open("‪D:\DatadrivenFramwork\TestData\data1.xlsx")
Set objworksheet=objworkbook.Worksheets(1)
rowcount=objworksheet.UsedRange.Rows.count
msgbox rowcount
'
'Datatable.ImportSheet "‪‪‪D:\Saritha\DatadrivenFramwork\TestData\data1.xlsx",1,dtLocalsheet
'rowcount=datatable.GetSheet(dtLocalsheet).GetRowCount


For i = 1 To rowcount Step 1
	
	
datatable.SetCurrentRow(i)
Call login(datatable("agent",dtLocalSheet), datatable("password",dtLocalSheet))
Call neworder(datatable("fromcity",dtLocalSheet),datatable("tocity",dtLocalSheet),datatable("nooftickets",dtLocalSheet),datatable("pname",dtLocalSheet))
Call updateorder(datatable("updatetickets",dtLocalSheet),datatable("flightclass",dtLocalSheet))

Datatable.Value("Results",dtLocalSheet)="Datadriven Passed"
datatable.ExportSheet "D:\Saritha\DatadrivenFramwork\TestResults\datadriveframework1.xlsx", dtLocalsheet

Next


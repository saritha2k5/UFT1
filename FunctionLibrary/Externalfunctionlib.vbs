Function demo
	
		msgbox "hi"
End Function

Function login(Agent,Password)
	

systemutil.Run "C:\Program Files (x86)\HPE\Unified Functional Testing\samples\Flights Application\FlightsGUI.exe"

WpfWindow("HPE MyFlight Sample Applicatio").WpfEdit("agentName").Set Agent
WpfWindow("HPE MyFlight Sample Applicatio").WpfEdit("password").Set Password
'WpfWindow("HPE MyFlight Sample Applicatio").Click 393,455
'RunAction "LOGINFR", oneIteration
WpfWindow("HPE MyFlight Sample Applicatio").WpfButton("OK").Click

'msgbox "how r u:"
End Function

Function NewOrder(fromcity, tocity, nooftickets,passengername)
	On error resume next
WpfWindow("HPE MyFlight Sample Applicatio").WpfComboBox("fromCity").Select fromcity
WpfWindow("HPE MyFlight Sample Applicatio").WpfComboBox("toCity").Select tocity
WpfWindow("HPE MyFlight Sample Applicatio").WpfComboBox("numOfTickets").Select nooftickets

WpfWindow("HPE MyFlight Sample Applicatio").WpfButton("FIND FLIGHTS").Click
WpfWindow("HPE MyFlight Sample Applicatio").WpfTable("flightsDataGrid").SelectCell 1,0
'WpfWindow("HPE MyFlight Sample Applicatio").WpfTable("flightsDataGrid").SelectCell 3,1
'WpfWindow("HPE MyFlight Sample Applicatio").WpfButton("FIND FLIGHTS").Click
WpfWindow("HPE MyFlight Sample Applicatio").WpfButton("SELECT FLIGHT").Click
WpfWindow("HPE MyFlight Sample Applicatio").WpfEdit("passengerName").Set passengername
WpfWindow("HPE MyFlight Sample Applicatio").WpfButton("ORDER").Click

End  Function


Function updateorder(nooftickets,flightclass)
	On error resume next
	wait(5)
WpfWindow("HPE MyFlight Sample Applicatio").WpfComboBox("numOfTicketsCombo").Select nooftickets
WpfWindow("HPE MyFlight Sample Applicatio").WpfComboBox("flightClassCombo").Select flightclass
WpfWindow("HPE MyFlight Sample Applicatio").WpfButton("updateBtn").Click
WpfWindow("HPE MyFlight Sample Applicatio").Close
End Function

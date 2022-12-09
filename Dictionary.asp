<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Dictionary</title>
</head>
<body>
	<%
		Dim d,a,i,s
		Set d=Server.CreateObject("Scripting.Dictionary")
		d.Add "suman",22
		d.Add "bangera",23
		d.Add "ram",30
		d.Add "sam",18


		if d.Exists("suman")=true then
  			Response.Write("Key exists!")
		else
  			Response.Write("Key does not exist!")
		end if

		set d=nothing


		Response.Write("<p>The values of the items are:</p>")
		a=d.Items
		for i = 0 To d.Count -1
    		s = s & a(i) & "<br>"
		next
		Response.Write(s)

set d=nothing
		
	%>
</body>
</html>
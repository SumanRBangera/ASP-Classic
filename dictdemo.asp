<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
<%
		dim d,a,i,s
		set d=Server.CreateObject("Scripting.Dictionary")
		d.Add "suman",22
		d.Add "bangera",23
		d.Add "ram",30
		d.Add "sam",18

		Response.Write("<p>The values of the items are:</p>")
		a=d.Items
		for i = 0 To d.Count -1
		    s = s & a(i) & "<br>"
		next
		Response.Write(s)

		set d=nothing

'a=d.Keys
'for i = 0 To d.Count -1
 '   s = s & a(i) & "<br>"
'next
'Response.Write(s)
'set d=nothing'
%>
</body>
</html>
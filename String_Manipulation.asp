<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>String Manipulation</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<%

		response.write("<h2 id='h2tag'>Basics</h2>")

		response.write("<p style='color:red'>Welcome!!!</p>")

		name="Suman"
		response.write(ucase(name))
		response.write("<br>")
		
		response.write(lcase(name))
		response.write("<br>")
		response.write(strreverse(name))
		dim i
		for i=1 to 5
   			response.write("<h" & i & ">Suman "  & "</h" & i & ">")
		next
		
	%>
	<div class='form_div'>
		<form id='form' method="get">
			<b>Your name: </b><input id='input_field' type="text" name="fname"  />
			
			<input id='submit' type="submit" value="Submit" />
		</form>
		<%
			dim fname
			fname=Request.QueryString("fname")
			If fname<>"" Then
    			Response.Write("Hello " & fname & "!<br>")
    		
			End If
		%>
	</div>


</body>
</html>
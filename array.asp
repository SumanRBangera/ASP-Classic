<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Basic Operations</title>

	<% 
		sub Sum(n1,n2)
			response.write(n1+n2)
		end sub

		sub array_iteration(names)
			for i=0 to 2
				response.write("<br>"&names(i))
			next
		end sub
	%>

</head>
<body>

<p> Sum : <% call Sum(3,4)%></p>
<hr>

<% 

	

	'array
	dim names(2)
	names(0)="suma"
	names(1)="ram"
	names(2)="ken"
	call array_iteration(names)
	response.write("<hr>")

	'KEYWORDS

	Dim x   'uninitialized!
	x=10   'initialized 
	x=Empty   'uninitialized!
	response.write("<br>"&isEmpty(x))
	x=null 'contains no data
	response.write("<hr>"&isNull(x))
%>

</body>
</html>
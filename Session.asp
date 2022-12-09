<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>
</head>
<body>
  <%
    Session("name")="Suman"
    Session("age")=22

    dim i
    For Each i in Session.Contents
     
       Response.Write(i &":"& Session.Contents(i) & "<br>")
    Next
  %>
  <p>Welcome <%Response.Write(Session("name"))%></p>
</body>
</html>
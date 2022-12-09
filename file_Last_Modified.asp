<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <title>File Last Modification</title>
</head>
<body>
     <%
          Set fs = Server.CreateObject("Scripting.FileSystemObject")

          Set rs = fs.GetFile(Server.MapPath("array.asp"))
          modified = rs.DateLastModified
     %>
          This file was last modified on: <%response.write(modified)
          Set rs = Nothing
          Set fs = Nothing
          %>

</body>
</html>
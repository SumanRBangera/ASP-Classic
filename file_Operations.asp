<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <title>File Operation</title>
</head>
<body>
     <%
          Set fs=Server.CreateObject("Scripting.FileSystemObject")

          If (fs.FileExists("C:\inetpub\wwwroot\test\info.txt"))=true Then
               Response.Write("File info.txt exists.")
          Else
               Response.Write("File info.txt does not exist.")
          End If

          set fs=nothing


          'create a text file



          dim fs,fname
          set fs=Server.CreateObject("Scripting.FileSystemObject")
          set fname=fs.CreateTextFile("C:\inetpub\wwwroot\test\test.txt",true)
          fname.WriteLine("Hello World")
          fname.Close
          set fname=nothing
          set fs=nothing

          'dim fs'
               'Set fs=Server.CreateObject("Scripting.FileSystemObject")
               'fs.CreateTextFile("c:\test.txt",True)
               'if fs.FileExists("c:\test.txt") then
               'fs.DeleteFile("c:\test.txt")
              ' end if
               'set fs=nothing           
          
     %>
</body>
</html>


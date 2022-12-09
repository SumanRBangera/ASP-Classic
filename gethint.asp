<%
'response.expires=-1'
dim a(30)
'Fill up array with names
a(1)="Suman"
a(2)="Bangera"
a(3)="Sumanth"
a(4)="Diana"
a(5)="Eva"
a(6)="Karthik"
a(7)="Prajwal"
a(8)="Piyush"
a(9)="Ken"
a(10)="John"


'get the q parameter from URL
q=ucase(request.querystring("q"))

'lookup all hints from array if length of q>0
if len(q)>0 then
  hint=""
  for i=1 to 30
    if q=ucase(mid(a(i),1,len(q))) then
      if hint="" then
        hint=a(i)
      else
        hint=hint & " , " & a(i)
      end if
    end if
  next
end if

'Output "no suggestion" if no hint were found
'or output the correct values
if hint="" then
  response.write("no suggestion")
else
  response.write(hint)
end if
%>
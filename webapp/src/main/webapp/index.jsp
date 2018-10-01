<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
 <center><h2 style="color:green">JSP Login Example</h2></center>
   <body>
<table border="1" align="center">
 
<tr>
<td>Enter Your Name :</td>
<td><input type="text" name="name"/></td>
</tr>
<tr>
<td>Enter Your Password :</td>
<td><input type="password" name="password"/></td>
</tr>
<tr>
<td>Select UserType</td>
<td><select name="usertype">
<option value="select">select</option>
<%
while(rs.next())
{
String usertype = rs.getString("usertype");
%>
<option value=<%=usertype%>><%=usertype%></option>
<% 
}
}
catch(SQLException sqe)
{
out.println("home"+sqe);
}
%>
</select>
</td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="submit"/></td>
</table>
</body>
</html> 


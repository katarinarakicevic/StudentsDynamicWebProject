<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="rs.Database"%>
<%@page import="rs.Student"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RESULT PAGE</title>
</head>
<%
	String name = request.getParameter("name");
	String surname= request.getParameter("surname");
	String average= request.getParameter("average");
	String program = request.getParameter("program");
%>

<body>
<%
if (name!= null && name.length()>0 && surname != null && surname.length()>0 && average != null && average.length()>0 && program != null && program.length()>0){
	try{
		float avg = Float.parseFloat(average);
		Student s = new Student(name,surname,avg);
		if (program.equals("se"))
			Database.se.addStudent(s);
		else if (program.equals("it"))
			Database.it.addStudent(s);
		else 
			Database.hr.addStudent(s);	
	}catch(Exception e){
		out.println("Average must be float !");
	}
}else{ 
	out.println("You must fill everything !!!");
} 
%>

<h1>Student data</h1>
<h2>Software engineering</h2>
<% if (Database.se.NumberOfStudents() > 0){ %>
	<table>
		<tr>
			<th>Name:</th>
			<th>Surname:</th>
			<th>Average:</th>
		</tr>
		<% for(Student s : Database.se.getLs()) {%>
		<tr>
			<td><%=s.getName() %></td>
			<td><%=s.getSurname() %></td>
			<td><%=s.getAverage() %></td>
		</tr>
		<%} %>
	</table>
<%}else{ %>
	There is no students on this program !!!
<%} %>
<h2>Information technology</h2>
<% if (Database.it.NumberOfStudents() > 0){ %>
	<table>
		<tr>
			<th>Name:</th>
			<th>Surname:</th>
			<th>Average:</th>
		</tr>
		<% for(Student s : Database.it.getLs()) {%>
		<tr>
			<td><%=s.getName() %></td>
			<td><%=s.getSurname() %></td>
			<td><%=s.getAverage() %></td>
		</tr>
		<%} %>
	</table>
<%}else{ %>
	There is no students on this program !!!
<%} %>
<h2>Human resources</h2>
<% if (Database.hr.NumberOfStudents() > 0){ %>
	<table>
		<tr>
			<th>Name:</th>
			<th>Surname:</th>
			<th>Average:</th>
		</tr>
		<% for(Student s : Database.hr.getLs()) {%>
		<tr>
			<td><%=s.getName() %></td>
			<td><%=s.getSurname() %></td>
			<td><%=s.getAverage() %></td>
		</tr>
		<%} %>
	</table>
<%}else{ %>
	There is no students on this program !!!
<%} %>
<br><a href="index.jsp">Home page</a>

</body>
</html>
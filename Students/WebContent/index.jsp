<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INDEX PAGE</title>
</head>
<body>
<form action="result.jsp" method="get">
	<table >
		<tr>
			<td>Name:</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>Surname:</td>
			<td><input type="text" name="surname"></td>
		</tr>
		<tr>
			<td>Average:</td>
			<td><input type="text" name="average"></td>
		</tr>
		<tr>
			<td>Program:</td>
			<td>
			<select name="program">
			<option value="se">Software engineering</option>
			<option value="it">Information technology</option>
			<option value="hr">Human resources</option>
			</select>
			</td>
		</tr>
		<tr>
		<td colspan="2"><input type="submit" value="Submit"></td>
		</tr>
		</table>
	</form>

</body>
</html>
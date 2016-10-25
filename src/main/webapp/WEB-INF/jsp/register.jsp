<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
</head>
<body>
	<form:form modelAttribute="user">
	First Name: <form:input path="firstName" />
		<br />
	Last Name: <form:input path="lastName" />
		<br />
	User Name: <form:input path="username" />
		<br />
	Password: <form:input path="password" />
		<br />
	Email Id: <form:input path="email" />
		<br />
	CIN: <form:input path="cin" />
		<br />
		<input type="submit" name="add" value="Add" />
	</form:form>
</body>
</html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Course</title>
</head>
<body>
	<h2>
		<a href="../index.html">OnCourse</a>
	</h2>
	<form:form modelAttribute="course">
	Course Name: <form:input path="name" />
		<br />
	Course Code: <form:input path="code" />
		<br />
	Course Unit: <form:input path="units" />
		<br />
		<input type="submit" name="add" value="Add" />
	</form:form>
</body>
</html>
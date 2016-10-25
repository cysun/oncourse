<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Course</title>
</head>
<body>
	<div id="header">
		<h2>
			<a href="../index.html">OnCourse</a>
		</h2>
	</div>
	<form:form modelAttribute="course">
	Course Name: <form:input path="name" />
		<br />
	Course Code: <form:input path="code" />
		<br />
	Course Unit: <form:input path="units" />
		<br />
	Obsolete: <form:checkbox path="obsolete" />
		<input type="submit" name="save" value="Save" />
	</form:form>
</body>
</html>
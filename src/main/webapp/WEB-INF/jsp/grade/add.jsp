<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add grade</title>
</head>
<body>
	<h2>
		<a href="../index.html">OnCourse</a>
	</h2>
	<form:form modelAttribute="graderecord">
	Term: 
		<form:select path="term">
			<form:option value="FALL" label="Fall" />
			<form:option value="Winter" label="Winter" />
			<form:option value="Spring" label="Spring" />
			<form:option value="Summer" label="Summer" />
		</form:select>
		<br />
	Year: <form:select path="term">
			<form:option value="2016">2016</option>
			<form:option value="2015">2015</option>
			<form:option value="2014">2014</option>
			<form:option value="2013">2013</option>
		</form:select>
		<br />
	Course: <form:select name="course">
			<c:forEach items="${GradeRecord}" var="g">
				<form:option value="${g.id}">${g.course}</option>
			</c:forEach>
		</form:select>
		<br />
	Grade: <form:select name="grade">
			<c:forEach items="${Grade}" var="gchar">
				<form:option value="${gchar.id}">${gchar.symbol}</option>
			</c:forEach>
		</form:select>
		<br />
		<input type="submit" name="add" value="Add" />
	</form:form>
</body>
</html>
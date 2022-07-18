<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Form</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
		First Name: <form:input path="firstName"/>
		<br><br>
		Last Name: <form:input path="lastName"/>
		<br><br>
		Country:
		<form:select path="country">
			<%-- <form:option value="INDIA" label="India"/>
			<form:option value="BRAZIL" label="Brazil"/>
			<form:option value="GERMANY" label="Germany"/>
			<form:option value="UK" label="UnitedKingdom"/> --%>
			<form:options items="${student.countryOptions}"/>
		</form:select>
		<br><br>
		<%-- JAVA <form:radiobutton path="favouriteLanguage" value="Java"/>
		C# <form:radiobutton path="favouriteLanguage" value="C#"/>
		PHP <form:radiobutton path="favouriteLanguage" value="PHP"/>
		Python <form:radiobutton path="favouriteLanguage" value="Python"/> --%>
			<form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"/>
		<br><br>
		Operating Systems:
		Linux <form:checkbox path="operatingSystems" value="Linux" />
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
		MS Windows <form:checkbox path="operatingSystems" value="MS Window" />
		<br><br>
		<input type="submit" value="submit">
	</form:form>
</body>
</html>
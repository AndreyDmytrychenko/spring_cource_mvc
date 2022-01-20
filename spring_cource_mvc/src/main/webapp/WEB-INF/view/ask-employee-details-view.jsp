<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>

<h2>
    Dear Employee, please enter your details
</h2>
<br>
<br>
<%--<form action="showDetails" method="get">--%>
<%--<input type="text" name = "employeeName"--%>
<%--       placeholder="Write your name"/>--%>
<%--    <input type="submit" value="Enter"/>--%>
<%--</form>--%>

<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br><br>
    Department <form:select path="department">
<%--    <form:option value="Information Technology" label="IT"/>--%>
<%--    <form:option value="Human Resources" label="HR"/>--%>
<%--    <form:option value="Sales" label="Sales"/>--%>
    <form:options items="${employee.departments}"/>
</form:select>
    <br><br>
    Which car do you want?
    <br><br>
    <form:radiobutton path="carModel" value="BMW"/>BMW<br>
    <form:radiobutton path="carModel" value="Lexus"/>Lexus<br>
    <form:radiobutton path="carModel" value="MB"/>Mercedes Benz
    <%--    <form:radiobuttons path="carModel" items="${employee.carBrands}"/>--%>
    <br><br>
    <form:errors path="carModel"/>
    <br><br>
    Foreign language(s)
    <br><br>
<%--    EN <form:checkbox path="languages" value="English"/>--%>
<%--    FR <form:checkbox path="languages" value="Franch"/>--%>
<%--    DE <form:checkbox path="languages" value="Deutch"/>--%>
    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br><br>
    <form:errors path="languages"/>
    <br><br>
    Phone number:<form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br><br>
    Email:<form:input path="email"/>
    <form:errors path="email"/>
    <br><br>
    <input type="submit" value="Ok"/><input type="reset" value="Reset"/>
</form:form>

</body>

</html>
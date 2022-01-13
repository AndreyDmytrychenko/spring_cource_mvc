<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<body>

<h2>Dear employee, you are WELCOME</h2>
<br>
<br>
<br>
<br>

<%--Your name: ${param.employeeName}--%>

Your name: ${emp.name}
<br><br>
Your surname: ${emp.surname}
<br><br>
Your salary: ${emp.salary}
<br><br>
Your department: ${emp.department}
<br><br>
Your car: ${emp.carModel}
<br><br>
Language(s)
<ul>
    <c:forEach var="lang" items="${emp.languages}">

        <li>   ${lang}   </li>

    </c:forEach>
</ul>




</body>
</html>

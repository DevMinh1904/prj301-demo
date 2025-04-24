<%-- 
    Document   : studentlist
    Created on : Apr 22, 2025, 12:21:09 AM
    Author     : ducmi
--%>

<%@page import="java.util.List"%>
<%@page import="prj301demo.Student.StudentDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file = "./menu.jsp" %>
        <h1>Student List</h1>
        <form action='' method=GET>
            <input name=keyword type=text value="<%=request.getParameter("keyword") != null ? request.getParameter("keyword") : ""%>">
            <input type=submit value=Search >
        </form>
        <%
            List<StudentDTO> list = (List<StudentDTO>) request.getAttribute("studentlist");
            if (list != null && !list.isEmpty()) {
        %>
        <table>
            <tr>
                <td>Id</td>
                <td><a href=?colSort=firstname>Name</a></td>
                <td>Age</td>
            </tr>

            <%
                for (StudentDTO student : list) {
            %>
            <tr>
                <td><%=student.getId()%></td>
                <td><%=student.getFirstname()%> <%=student.getLastname()%></td>
                <td><%=student.getAge()%></td>
            </tr>
            <%
                }
            } else {
            %> 
            <h1>No student found!</h1>
            <%
                }
            %>

        </table>
    </body>
</html>


</body>
</html>

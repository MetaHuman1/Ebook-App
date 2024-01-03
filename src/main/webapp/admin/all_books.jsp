<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entty.BookDetails" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Admin: All Books</title>
    <%@include file="allCss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<h3 class="text-center">Hello Admin</h3>

<c:if test="${not empty successMsg}">
    <h5 class="text-center text-success">${successMsg}</h5>
    <c:remove var="successMsg" scope="session"></c:remove>
</c:if>

<c:if test="${not empty failedMsg}">
    <h5 class="text-center text-danger">${failedMsg}</h5>
    <c:remove var="failedMsg" scope="session"></c:remove>
</c:if>

<table class="table table-striped ">
    <thead class="bg-primary text-white">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Image</th>
        <th scope="col">Book Name</th>
        <th scope="col">Author</th>
        <th scope="col">Price</th>
        <th scope="col">Category</th>
        <th scope="col">Status</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <%
        BookDAOImpl bookDAO = new BookDAOImpl(DBConnect.getConn());
        List<BookDetails> list = bookDAO.getAllBooks();
        for (BookDetails b : list) {
    %>
    <tr>
        <th><%=b.getId()%>
        </th>
        <th><img src="../book/<%=b.getPhotoName()%>"
                 style="width: 50px;height: 50px"></th>
        <th><%=b.getBookName()%>
        </th>
        <th><%=b.getAuthor()%>
        </th>
        <th><%=b.getPrice()%>
        </th>
        <th><%=b.getBookCategory()%>
        </th>
        <th><%=b.getStatus()%>
        </th>

        <td>
            <a href="edit_books.jsp?id=<%=b.getId()%>" class="btn btn-sm btn-primary">Edit</a>
            <a href="../delete_book?id=<%=b.getId()%>" class="btn btn-sm btn-danger">Delete</a>
        </td>
    </tr>
    <%
        }
    %>

    </tbody>
</table>

<div style="margin-top: 300px">
    <%@include file="footer.jsp" %>
</div>
</body>
</html>

<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entty.BookDetails" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Admin: Edit Book</title>
    <%@include file="allCss.jsp" %>
</head>
<body style="background-color: #f0f1f2">
<%@include file="navbar.jsp" %>
<div class="container ">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Edit Book</h4>


                    <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
                        BookDetails bookDetails = dao.getBookById(id);
                    %>

                    <form action="../edit_book" method="post">
                        <input type="hidden" name="id" value="<%=bookDetails.getId()%>">
                        <div class="form-group">
                            <label for="exampleInputBookName1">Book Name</label>
                            <input type="text" class="form-control" id="exampleInputBookName1"
                                   aria-describedby="emailHelp" required="required" name="bName"
                                   value="<%=bookDetails.getBookName()%>">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputAuthorName1">Author Name</label>
                            <input type="text" class="form-control" id="exampleInputAuthorName1"
                                   aria-describedby="emailHelp" required="required" name="author"
                                   value="<%=bookDetails.getAuthor()%>">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Price*</label>
                            <input type="number" class="form-control" id="exampleInputPassword1"
                                   aria-describedby="emailHelp" required="required" name="price"
                                   value="<%=bookDetails.getPrice()%>">
                        </div>
                        <div class="form-group">
                            <label for="inputState">Book Status</label>
                            <select type="number" class="form-control" id="inputState" name="status">
                                <%
                                    if ("Active".equals(bookDetails.getStatus())) {%>
                                <option value="Active">Active</option>
                                <% } else {%>
                                <option value="Inactive">Inactive</option>
                                <%
                                    }
                                %>
                            </select>
                        <button type="submit" class="btn btn-primary">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div style="margin-top: 300px">
    <%@include file="footer.jsp" %>
</div>
</body>
</html>

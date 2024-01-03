<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Admin: Home</title>
    <%@include file="allCss.jsp" %>
    <style type="text/css">
        a{
            text-decoration: none;
            color: black;
        }
        a:hover {
            text-decoration: none;
            color: black;
        }
    </style>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">
    <div class="row p-5 ">
        <div class="col-md-3">
            <a href="add_book.jsp">
            <div class="card">
                <div class="card-body text-center">
                    <i class="fas fa-plus-square fa-3x text-primary"></i><br>
                    <h4>Add Books</h4>
                    ------------
                </div>
            </div>
            </a>
        </div>
        <div class="col-md-3">
            <a href="all_books.jsp">
            <div class="card">
                <div class="card-body text-center">
                    <i class="fas fa-book-open fa-3x text-danger"></i><br>
                    <h4>All Books</h4>
                    ------------
                </div>
            </div>
            </a>
        </div>
        <div class="col-md-3">
            <a href="orders.jsp">
            <div class="card">
                <div class="card-body text-center">
                    <i class="fas fa-box-open fa-3x text-warning"></i><br>
                    <h4>Orders</h4>
                    ------------
                </div>
            </div>
            </a>
        </div>
        <div class="col-md-3">
            <div class="card">
                <div class="card-body text-center">
                    <i class="fas fa-sign-out-alt fa-3x text-primary"></i><br>
                    <h4>Logout</h4>
                    ------------
                </div>
            </div>
        </div>
    </div>
</div>

<div style="margin-top: 300px">
    <%@include file="footer.jsp"%>
</div>

</body>
</html>

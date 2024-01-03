<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entty.BookDetails" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Recent Book</title>
    <%@include file="components/allCss.jsp" %>
    <style type="text/css">
        .crd-ho {
            background-color: #fcf7f7;
        }
    </style>
</head>
<body>
<%@include file="components/navbar.jsp" %>
<div class="container">
    <div class="row p-3">
        <%
            BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
            List<BookDetails> list2 = dao2.getAllRecentBooks();
            for (BookDetails b : list2) {
        %>
        <div class="col-md-3">
            <div class="card crd-ho mt-2">
                <div class="card-body text-center">
                    <img alt="" src="book/<%=b.getPhotoName()%>" style="width: 150px; height: 200px"
                         class="img-thumblin">
                    <p><%=b.getBookName()%>
                    </p>
                    <p><%=b.getAuthor()%>
                    </p>
                    <p><%
                        if (b.getBookCategory().equals("Old")) {
                    %>
                        Category:<%=b.getBookCategory()%>
                    </p>
                    <div class="row">
                        <a href="" class="btn btn-success btn-sm ml-5">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%>
                            <i class="fas fa-ruble-sign"></i></a>
                    </div>
                    <%
                    } else {%>
                    Category:<%=b.getBookCategory()%></p>
                    <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-2">Add cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%>
                            <i class="fas fa-ruble-sign"></i></a>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>
</div>

</body>
</html>

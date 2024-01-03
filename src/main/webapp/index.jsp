<%@ page import="java.sql.Connection" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.entty.BookDetails" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ebook: Index</title>
    <%@include file="components/allCss.jsp" %>

    <style type="text/css">
        .back-img {
            background: url("img/b.jpg");
            height: 50vh;
            width: 100%;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .crd-ho {
            background-color: #fcf7f7;
        }
    </style>
</head>
<body style="background-color: #f7f7f7">
<%@include file="components/navbar.jsp" %>
<div class="container-fluid back-img ">
    <h2 class="text-center text-white">EBook Management System</h2>
</div>

<% Connection conn = DBConnect.getConn();
    System.out.println(conn);
%>

<%-- Start Recent Books--%>
<div class="container">
    <h3 class="text-center">Recent Book</h3>
    <div class="row">
        <%
            BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
            List<BookDetails> list2 = dao2.getRecentBook();
            for (BookDetails b : list2) {
        %>
        <div class="col-md-3">
            <div class="card crd-ho">
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

        <div class="text-center mt-1">
            <a href="all_recent_books.jsp" class="btn btn-danger btn-sm text-white">View All</a>
        </div>

    </div>
    <%-- End Recent Books--%>

    <hr>

    <%-- Start New Books--%>
    <div class="container">
        <h3 class="text-center">New Book</h3>
        <div class="row">
            <%
                BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
                List<BookDetails> list = dao.getNewBook();
                for (BookDetails b : list) {
            %>
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName()%>" style="width: 150px; height: 200px"
                             class="img-thumblin">
                        <p><%=b.getBookName()%>
                        </p>
                        <p><%=b.getAuthor()%>
                        </p>
                        <p>Category:<%=b.getBookCategory()%>
                        </p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-2">Add cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%>
                                <i class="fas fa-ruble-sign"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <%
                }
            %>

        </div>
        <div class="text-center mt-1">
            <a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
        </div>

    </div>
    <%-- End New Books--%>

    <hr>

    <%-- Start Old Books--%>
    <div class="container">
        <h3 class="text-center">Old Book</h3>
        <div class="row">

            <%
                BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
                List<BookDetails> list3 = dao3.getOldBook();
                for (BookDetails b : list3) {
            %>
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName()%>" style="width: 150px; height: 200px"
                             class="img-thumblin">
                        <p><%=b.getBookName()%>
                        </p>
                        <p><%=b.getAuthor()%>
                        </p>Category: <%=b.getBookCategory()%><p>
                        <div class="row text-center">
                            <a href="" class="btn btn-success btn-sm ml-5">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%>
                                <i class="fas fa-ruble-sign"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>

        <div class="text-center mt-1">
            <a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
        </div>

    </div>
    <%-- End Old Books--%>


    <%@include file="components/footer.jsp" %>
</body>
</html>







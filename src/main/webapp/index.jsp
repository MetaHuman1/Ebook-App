<%@ page import="java.sql.Connection" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ebook: Index</title>
    <%@include file="components/allCss.jsp"%>

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
    <%@include file="components/navbar.jsp"%>
    <div class="container-fluid back-img ">
        <h2 class="text-center text-white">EBook Management System</h2>
    </div>

    <% Connection conn = DBConnect.getConn();
    System.out.println(conn);
    %>

    <%-- Start Recent Books--%>
    <div class="container" >
        <h3 class="text-center">Recent Book</h3>
        <div class="row">
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/spring-in-action.png" style="width: 150px; height: 200px"
                             class="img-thumblin">
                        <p>Spring in action</p>
                        <p>Craig Walls</p>
                        <p>Category:New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-2"><i class="fas fa-cart-plus"></i> Add cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">600</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/spring-in-action.png" style="width: 150px; height: 200px"
                             class="img-thumblin">
                        <p>Spring in action</p>
                        <p>Craig Walls</p>
                        <p>Category:New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-2">Add cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">600</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/spring-in-action.png" style="width: 150px; height: 200px"
                             class="img-thumblin">
                        <p>Spring in action</p>
                        <p>Craig Walls</p>
                        <p>Category:New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-2">Add cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">600</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/spring-in-action.png" style="width: 150px; height: 200px"
                             class="img-thumblin">
                        <p>Spring in action</p>
                        <p>Craig Walls</p>
                        <p>Category:New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-2">Add cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">600</a>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <div class="text-center mt-1">
            <a href="" class="btn btn-danger btn-sm text-white">View All</a>
        </div>

    </div>
    <%-- End Recent Books--%>

    <hr>

    <%-- Start New Books--%>
    <div class="container" >
        <h3 class="text-center">New Book</h3>
        <div class="row">
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/spring-in-action.png" style="width: 150px; height: 200px"
                             class="img-thumblin">
                        <p>Spring in action</p>
                        <p>Craig Walls</p>
                        <p>Category:New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-2">Add cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">600</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/spring-in-action.png" style="width: 150px; height: 200px"
                             class="img-thumblin">
                        <p>Spring in action</p>
                        <p>Craig Walls</p>
                        <p>Category:New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-2">Add cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">600</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/spring-in-action.png" style="width: 150px; height: 200px"
                             class="img-thumblin">
                        <p>Spring in action</p>
                        <p>Craig Walls</p>
                        <p>Category:New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-2">Add cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">600</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/spring-in-action.png" style="width: 150px; height: 200px"
                             class="img-thumblin">
                        <p>Spring in action</p>
                        <p>Craig Walls</p>
                        <p>Category:New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-2">Add cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">600</a>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <div class="text-center mt-1">
            <a href="" class="btn btn-danger btn-sm text-white">View All</a>
        </div>

    </div>
    <%-- End New Books--%>

    <hr>

    <%-- Start Old Books--%>
    <div class="container" >
        <h3 class="text-center">Old Book</h3>
        <div class="row">
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/spring-in-action.png" style="width: 150px; height: 200px"
                             class="img-thumblin">
                        <p>Spring in action</p>
                        <p>Craig Walls</p>
                        <p>Category:New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-5">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">600</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/spring-in-action.png" style="width: 150px; height: 200px"
                             class="img-thumblin">
                        <p>Spring in action</p>
                        <p>Craig Walls</p>
                        <p>Category:New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-5">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">600</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/spring-in-action.png" style="width: 150px; height: 200px"
                             class="img-thumblin">
                        <p>Spring in action</p>
                        <p>Craig Walls</p>
                        <p>Category:New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-5">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">600</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/spring-in-action.png" style="width: 150px; height: 200px"
                             class="img-thumblin">
                        <p>Spring in action</p>
                        <p>Craig Walls</p>
                        <p>Category:New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-5">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">600</a>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <div class="text-center mt-1">
            <a href="" class="btn btn-danger btn-sm text-white">View All</a>
        </div>

    </div>
    <%-- End Old Books--%>


<%@include file="components/footer.jsp"%>
</body>
</html>







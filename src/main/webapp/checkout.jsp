<%@ page import="com.entty.Cart" %>
<%@ page import="com.DAO.CartDao" %>
<%@ page import="com.DAO.CartDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entty.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Cart Page</title>
    <%@include file="components/allCss.jsp" %>
</head>
<body style="background-color: #f0f1f2">
<%@include file="components/navbar.jsp" %>

<c:if test="${ empty userobj}">
    <c:redirect url="login.jsp"></c:redirect>
</c:if>
<div class="row p-2">
    <div class="col-md-6">
        <div class="card bg-white">
            <h3 class="text-center text-success">Your Selected Item</h3>
            <div class="card-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th scope="col">Book Name</th>
                        <th scope="col">Author</th>
                        <th scope="col">Price</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>

                    <%
                        User user = (User) session.getAttribute("userobj");
                        CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
                        List<Cart> list = dao.getBookByUser(user.getId());
                        Double totalPrice = 0.0 ;
                        for (Cart c : list) {
                    totalPrice = c.getTotalPrice();
                    %>
                    <tr>
                        <td><%=c.getBookName()%></td>
                        <td><%=c.getAuthor()%></td>
                        <td><%=c.getPrice()%></td>
                        <a href="" class="btn btn-sm btn-danger">Remove</a>
                    </tr>
                    <%
                        }
                    %>

                    <tr>
                        <td>Total Price</td>
                        <td></td>
                        <td></td>
                        <td><%=totalPrice%></td>
                    </tr>



                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="col-md-6">
        <div class="card">
            <div class="card-body">
                <h3 class="text-center text-success">Your details for order</h3>
                <form>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail">Name</label>
                            <input type="text" class="form-control" id="inputEmail" value="">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword">Email</label>
                            <input type="email" class="form-control" id="inputPassword" value="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Phone Number</label>
                            <input type="number" class="form-control" id="inputEmail4">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Address</label>
                            <input type="text" class="form-control" id="inputPassword4" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmai">Landmark</label>
                            <input type="text" class="form-control" id="inputEmai">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputassword4">City</label>
                            <input type="text" class="form-control" id="inputassword4" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEai">State</label>
                            <input type="text" class="form-control" id="inputEai">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputaswwsword4">Pin code</label>
                            <input type="text" class="form-control" id="inputaswwsword4" placeholder="Password">
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Payment Mode</label>
                        <select class="form-control">
                            <option>--Select--</option>
                            <option>Cash On Delivery</option>
                        </select>
                    </div>

                    <div class="text-center">
                        <button class="btn btn-warning">Order Now</button>
                        <a href="index.jsp" class="btn btn-success">Continue shopping</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>


















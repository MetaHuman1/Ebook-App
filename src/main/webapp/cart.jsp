<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart Page</title>
    <%@include file="components/allCss.jsp" %>
</head>
<body style="background-color: #f0f1f2">
<%@include file="components/navbar.jsp" %>
<div class="row p-2">
    <div class="col-md-6">
        <div class="card bg-white">
            <h3 class="text-center text-success">Your Selected Item</h3>
            <div class="card-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">First</th>
                        <th scope="col">Last</th>
                        <th scope="col">Handle</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
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


















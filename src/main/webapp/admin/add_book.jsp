<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Admin: Add Book</title>
    <%@include file="allCss.jsp" %>
</head>
<body style="background-color: #f0f1f2">
<%@include file="navbar.jsp" %>
<div class="container ">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Add Book</h4>
                    <c:if test="${not empty successMsg}">
                        <p class="text-center text-success">${successMsg}</p>
                        <c:remove var="successMsg" scope="session"></c:remove>
                    </c:if>

                    <c:if test="${not empty failedMsg}">
                        <p class="text-center text-danger">${failedMsg}</p>
                        <c:remove var="failedMsg" scope="session"></c:remove>
                    </c:if>

                    <form action="../add_books" method="post" enctype="multipart/form-data">

                        <div class="form-group">
                            <label for="exampleInputBookName1">Book Name</label>
                            <input type="text" class="form-control" id="exampleInputBookName1"
                                   aria-describedby="emailHelp" required="required" name="bName">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputAuthorName1">Author Name</label>
                            <input type="text" class="form-control" id="exampleInputAuthorName1"
                                   aria-describedby="emailHelp" required="required" name="author">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Price*</label>
                            <input type="number" class="form-control" id="exampleInputPassword1"
                                   aria-describedby="emailHelp" required="required" name="price">
                        </div>
                        <div class="form-group">
                            <label for="inputState1">Book Categories</label>
                            <select type="number" class="form-control" id="inputState1" name="categories">
                            <option selected>--select--</option>
                            <option value="New">New</option>
                            </select>

                        </div>
                        <div class="form-group">
                            <label for="inputState">Book Status</label>
                            <select type="number" class="form-control" id="inputState" name="status">
                            <option selected>--select--</option>
                            <option value="Active">Active</option>
                            <option value="Inactive">Inactive</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlFile1">Uppload Photo</label>
                            <input class="form-control-file" type="file" id="exampleFormControlFile1" required="required"
                                   name="bimg">
                        </div>
                        <button type="submit" class="btn btn-primary">Add</button>
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

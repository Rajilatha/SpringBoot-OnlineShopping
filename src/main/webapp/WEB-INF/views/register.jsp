<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">

<head>
<title>Online Shopping - ${title }</title>
<script type="text/javascript">
	window.menu = '${title }';
	window.contextRoot = '${contextRoot}'
</script>
<!-- Bootstrap core CSS -->

<link href="${contextRoot }/static/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${contextRoot }/static/css/bootstrap-readable-theme.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="${contextRoot }/static/css/myapp.css" rel="stylesheet">

</head>

<body>
<div class="container">

    <!--Show this info message only if registered successfully-->
    <div class="alert alert-info" th:if="${successMessage}" th:utext="${successMessage}"></div>

    <div class="row" style="margin-top:20px">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <form autocomplete="off" action="#" th:action="@{/register}"
                  th:object="${user}" method="post" role="form">

                <div class="form-group">
                    <label th:if="${#fields.hasErrors('firstname')}" th:errors="*{firstname}"
                           class="alert alert-danger"></label>
                    <input type="text" th:field="*{firstname}" placeholder="FirstName"
                           class="form-control input-lg"/>
                </div>

                <div class="form-group">
                    <label th:if="${#fields.hasErrors('lastName')}" th:errors="*{lastName}"
                           class="alert alert-danger"></label>
                    <input type="text" th:field="*{lastName}" placeholder="Last Name"
                           class="form-control input-lg"/>
                </div>

                <div class="form-group">
                    <label th:if="${#fields.hasErrors('email')}" th:errors="*{email}"
                           class="alert alert-danger"></label>
                    <input type="text" th:field="*{email}" placeholder="Email"
                           class="form-control input-lg"/>
                </div>

                <div class="form-group">
                    <label th:if="${#fields.hasErrors('password')}" th:errors="*{password}"
                           class="alert alert-danger"></label>
                    <input type="password" th:field="*{password}" placeholder="Password"
                           class="form-control input-lg"/>
                </div>

					<div class="form-group">
							<label class="control-label col-md-4" for="confirmPassword">Confirm
								Password</label>
							<div class="col-md-8">
								<sf:input path="confirmPassword" type="password"
									class="form-control" placeholder="Re-Enter Password" />
								<sf:errors path="confirmPassword" cssClass="help-block"
									element="em" />
							</div>
						</div>

                <div class="form-group">
                    <label th:if="${#fields.hasErrors('username')}" th:errors="*{username}"
                           class="alert alert-danger"></label>
                    <input type="text" th:field="*{username}" placeholder="Username"
                           class="form-control input-lg"/>
                </div>

					<div class="form-group">
							<label class="control-label col-md-4" for="role">Select
								Role</label>
							<div class="col-md-8">
								<label class="radio-inline"> <sf:radiobutton path="role"
										value="USER" checked="checked" /> User
								</label> <label class="radio-inline"> <sf:radiobutton
										path="role" value="SUPPLIER" /> Supplier
								</label>
							</div>
						</div>

                <div class="row">
                    <div class="col-sm-3" style="float: none; margin: 0 auto;">
                        <input type="submit" class="btn btn-primary btn-block" value="Submit"/>
                    </div>
                </div>

            </form>
        </div>
    </div>

</div>
		<!-- End Page Content -->
		<!-- Footer -->
		<%@include file="share/footer.jsp"%>

		<!-- jQuery -->
		<script src="${contextRoot }/static/js/jquery.js"></script>

		<!-- jQuery validator -->
		<script src="${contextRoot }/static/js/jquery.validate.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="${contextRoot }/static/js/bootstrap.min.js"></script>

		<!-- Self coded javascript -->
		<script src="${contextRoot }/static/js/myapp.js"></script>
	</div>
</body>

</html>


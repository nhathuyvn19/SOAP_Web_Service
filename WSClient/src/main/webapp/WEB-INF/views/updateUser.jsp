<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="fUpdate"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Update Client</title>

<!-- Bootstrap Core CSS -->
<link href="<c:url value='/resources/css/bootstrap.min.css'/>"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="<c:url value='/resources/css/metisMenu.min.css'/>"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="<c:url value='/resources/css/dataTables/dataTables.bootstrap.css'/>"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="<c:url value='/resources/css/dataTables/dataTables.responsive.css'/>"
	rel="stylesheet">

<!-- Timeline CSS -->
<link href="<c:url value='/resources/css/timeline.css'/>"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<c:url value='/resources/css/startmin.css'/>"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="<c:url value='/resources/css/morris.css'/>" rel="stylesheet">

<!-- Custom Fonts -->
<link href="<c:url value='/resources/css/font-awesome.min.css'/>"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="navbar-header">
			<a class="navbar-brand" href="/WSClient">Home</a>
		</div>

		<!-- <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button> --> <!-- <ul class="nav navbar-nav navbar-left navbar-top-links">
                    <li><a href="#"><i class="fa fa-home fa-fw"></i> Website</a></li>
                </ul> -->

		<ul class="nav navbar-right navbar-top-links">
			<!-- <li class="dropdown navbar-inverse">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell fa-fw"></i> <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i> New Comment
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                        <span class="pull-right text-muted small">12 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> Message Sent
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-tasks fa-fw"></i> New Task
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </li> -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
					Language <b class="caret"></b>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<!-- <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                            </li>
                            <li class="divider"></li> -->
					<li><a
						href="${pageContext.request.contextPath}/updateUser/${user.id}?lang=en">English</a></li>
					<li><a
						href="${pageContext.request.contextPath}/updateUser/${user.id}?lang=vi">VN</a></li>
				</ul></li>
		</ul>
		<!-- /.navbar-top-links --> </nav>

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li class="sidebar-search">
						<div class="input-group custom-search-form">
							<form action="https://www.google.com/search" method="GET" target="_blank">
								<input type="text" name="q" placeholder="Google Search...">
								<button class="btn btn-primary" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div> <!-- /input-group -->
					</li>

					<li><a href="/WSClient/insert"><i class="fa fa-fw"
							aria-hidden="true" title="Copy to use user-plus">&#xf234</i> Add
							User</a></li>
				</ul>
			</div>
		</div>

		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Client Profile</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-info">
							<div class="panel-heading">Client Information</div>
							<div class="panel-body">
								<div class="row">
									<fUpdate:form method="POST" modelAttribute="user"
										action="/WSClient/saveEdit" role="form">
										<div class="col-lg-6">
											<div class="form-group">
												<fUpdate:hidden class="form-control" path="id" />
											</div>
											<div class="form-group">
												<label><spring:message code="label.name" /></label>
												<fUpdate:input class="form-control" path="name" />
												<p style="color: red;">
													<fUpdate:errors path="name"></fUpdate:errors>
												</p>
											</div>
											<div class="form-group">
												<label>Birthday</label>
												<fmt:formatDate value='${user.birthday }'
													pattern='yyyy-MM-dd' var="dateString" />
												<fUpdate:input type="date" class="form-control"
													path="birthday" value="${dateString }" />
												<p class="help-block">Ex: 1990-01-01</p>
											</div>
											<div class="form-group">
												<label>Gender</label>
												<fUpdate:select class="form-control" path="gender">
													<c:choose>
														<c:when test="${user.gender == true }">
															<fUpdate:option selected="selected" value="true">Male</fUpdate:option>
															<fUpdate:option value="false">Female</fUpdate:option>
														</c:when>
														<c:otherwise>
															<fUpdate:option value="True">Male</fUpdate:option>
															<fUpdate:option selected="selected" value="false">Female</fUpdate:option>
														</c:otherwise>
													</c:choose>
												</fUpdate:select>
											</div>
											<div class="form-group">
												<label>Address</label>
												<fUpdate:input class="form-control" path="address" />
												<p style="color: red;">
													<fUpdate:errors path="address"></fUpdate:errors>
												</p>

											</div>
										</div>

										<div class="col-lg-6">
											<div class="form-group">
												<label>Identity card</label>
												<fUpdate:input class="form-control" path="identityCard"
													type="number" />
												<p style="color: red;">
													<fUpdate:errors path="identityCard"></fUpdate:errors>
												</p>
											</div>
											<div class="form-group">
												<label>Cell phone</label>
												<fUpdate:input class="form-control" path="cellPhone" />
											</div>
											<div class="form-group">
												<label>Email</label>
												<fUpdate:input class="form-control" path="email" />
												<p style="color: red;">
													<fUpdate:errors path="email"></fUpdate:errors>
												</p>
											</div>
											<div class="form-group">
												<label>Nationality</label>
												<fUpdate:select path="nationality" class="form-control">
													<c:forEach var="item" items="${lstNation }">
														<c:choose>
															<c:when test="${user.nationality == item}">
																<fUpdate:option value="${item }" selected="selected">
																		${item }
																	</fUpdate:option>
															</c:when>
															<c:otherwise>
																<fUpdate:option value="${item }">
																		${item }
																	</fUpdate:option>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</fUpdate:select>
											</div>
											<div class="form-group">
												<label>Job</label>
												<fUpdate:select path="job" class="form-control">
													<c:forEach var="item" items="${lstJob }">
														<c:choose>
															<c:when test="${user.job == item}">
																<fUpdate:option value="${item }" selected="selected">
																		${item }
																	</fUpdate:option>
															</c:when>
															<c:otherwise>
																<fUpdate:option value="${item }">
																		${item }
																	</fUpdate:option>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</fUpdate:select>
											</div>
											<div class="form-group">
												<fUpdate:button type="submit" class="btn btn-primary btn-lg">Save</fUpdate:button>
												<a href="/WSClient"><button type="button"
														class="btn btn-default btn-lg">Cancel</button></a>
											</div>

										</div>

									</fUpdate:form>
								</div>
								<!-- /.row (nested) -->
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->
	</div>

	<!-- jQuery -->
	<script src="<c:url value='/resources/js/jquery.min.js'/>"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<c:url value='/resources/js/metisMenu.min.js'/>"></script>

	<!-- DataTables JavaScript -->
	<script
		src="<c:url value='/resources/js/dataTables/jquery.dataTables.min.js'/>"></script>
	<script
		src="<c:url value='/resources/js/dataTables/dataTables.bootstrap.min.js'/>"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<c:url value='/resources/js/startmin.js'/>"></script>

	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
	</script>
</body>
</html>
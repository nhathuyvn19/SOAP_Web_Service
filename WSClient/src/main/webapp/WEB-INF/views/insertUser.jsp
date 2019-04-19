<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="fInsert"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title><spring:message code="label.titleInsert" /></title>

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
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>Language<b
					class="caret"></b>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<!-- <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                            </li>
                            <li class="divider"></li> -->
					<li><a
						href="${pageContext.request.contextPath}/insert?lang=en">English</a></li>
					<li><a
						href="${pageContext.request.contextPath}/insert?lang=vi">VN</a></li>
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
						<h1 class="page-header">
							<spring:message code="label.headerInsert"></spring:message>
						</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-info">
							<div class="panel-heading">
								<spring:message code="label.headerUpdate2" />
							</div>
							<div class="panel-body">
								<div class="row">
									<fInsert:form method="POST" modelAttribute="user"
										action="/WSClient/saveInsert" role="form">
										<div class="col-lg-6">
											<div class="form-group">
												<label><spring:message code="label.id" /></label>
												<fInsert:input class="form-control" path="id" />
												<p style="color: red;">
													<fInsert:errors path="id"></fInsert:errors>
												</p>
												<p class="help-block">Ex: DXC001</p>
											</div>
											<div class="form-group">
												<label><spring:message code="label.name" /></label>
												<fInsert:input class="form-control" path="name" />
												<p style="color: red;">
													<fInsert:errors path="name"></fInsert:errors>
												</p>
											</div>
											<div class="form-group">
												<label><spring:message code="label.birthday" /></label>
												<fInsert:input type="date" class="form-control"
													path="birthday" />
												<p style="color: red;">
													<fInsert:errors path="birthday"></fInsert:errors>
												</p>
												<p class="help-block">Ex: 01/13/1970</p>
											</div>
											<div class="form-group">
												<label><spring:message code="label.gender" /></label>
												<fInsert:select class="form-control" path="gender">
													<fInsert:option value="true">
														<spring:message code="gender.male" />
													</fInsert:option>
													<fInsert:option value="false">
														<spring:message code="gender.female" />
													</fInsert:option>
												</fInsert:select>
											</div>
											<div class="form-group">
												<label><spring:message code="label.address" /></label>
												<fInsert:input class="form-control" path="address" />
												<p style="color: red;">
													<fInsert:errors path="address"></fInsert:errors>
												</p>
											</div>
										</div>

										<div class="col-lg-6">
											<div class="form-group">
												<label><spring:message code="label.identity" /></label>
												<fInsert:input type="number" class="form-control"
													path="identityCard" />
												<p style="color: red;">
													<fInsert:errors path="identityCard"></fInsert:errors>
												</p>
												<p class="help-block">&nbsp;</p>

											</div>
											<div class="form-group">
												<label><spring:message code="label.cellphone" /></label>
												<fInsert:input class="form-control" path="cellPhone" />
											</div>
											<div class="form-group">
												<label><spring:message code="label.email" /></label>
												<fInsert:input class="form-control" path="email" />
												<p style="color: red;">
													<fInsert:errors path="email"></fInsert:errors>
												</p>
												<p class="help-block">&nbsp;</p>
											</div>
											<div class="form-group">
												<label><spring:message code="label.nationality" /></label>
												<fInsert:select id="nationality" class="form-control"
													path="nationality">
													<c:forEach var="item" items="${lstNation }">
														<fInsert:option value="${item }">
																			${item }
																		</fInsert:option>
													</c:forEach>
												</fInsert:select>
											</div>
											<div class="form-group">
												<label><spring:message code="label.job" /></label>
												<fInsert:select id="job" class="form-control" path="job">
													<c:forEach var="item" items="${lstJob }">
														<fInsert:option value="${item }">
																			${item }
																		</fInsert:option>
													</c:forEach>
												</fInsert:select>
											</div>

										</div>

										<div class="form-group pull-right"> 
											<fInsert:button type="submit" class=" btn-lg btn btn-primary">
												<spring:message code="button.save" />
											</fInsert:button>
											<a href="/WSClient/">
												<button type="button" class="btn btn-default btn-lg">
													<spring:message code="button.cancel" />
												</button>
											</a>
											&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
									</fInsert:form>
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
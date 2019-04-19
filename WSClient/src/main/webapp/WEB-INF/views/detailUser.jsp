<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title><spring:message code="label.titleIndex" /></title>

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
		<!-- navigator-->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="navbar-header">
			<a class="navbar-brand" href="/WSClient">Home</a>
		</div>


		<ul class="nav navbar-right navbar-top-links">

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
					<li><a href="${pageContext.request.contextPath}/detailUser/${user.id }/?lang=en">English</a></li>
					<li><a href="${pageContext.request.contextPath}/detailUser/${user.id }/?lang=vi">VN</a></li>
				</ul></li>
		</ul>
		<!-- /.navbar-top-links --> <!-- /.navbar-static-side --> </nav>
		
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
					<%--  <div class="list-group" >
                                        <a class="list-group-item">
                                            <i class="fa fa-fw" aria-hidden="true" title="Copy to use info">&#xf129</i> <spring:message code="label.id"></spring:message>
                                                <span class="pull-right text-muted small">
                                                    <strong class="text-danger" >${user.id }</strong>
                                                </span>
                                        </a>
                                        <a class="list-group-item ">
                                                <i class="fa fa-fw" aria-hidden="true" title="Copy to use user">&#xf007</i> Last Name
                                                <span class="pull-right text-muted small">
                                                        <strong class="text-primary">${user.name }</strong>
                                                    </span>
                                        </a>
                                        <a  class="list-group-item">
                                                <i class="fa fa-fw" aria-hidden="true" title="Copy to use user-plus">&#xf234</i> First Name
                                                <span class="pull-right text-muted small">
                                                        <strong class="text-primary">Le Duy</strong>
                                                    </span>
                                        </a>
                                        <a class="list-group-item">
                                                <i class="fa fa-fw" aria-hidden="true" title="Copy to use birthday-cake">&#xf1fd</i> <spring:message code="label.birthday"></spring:message>
                                                <span class="pull-right text-muted small">
                                                        <strong >${user.birthday }</strong>
                                                </span>
                                        </a>
                                        <a class="list-group-item">
                                                <i class="fa fa-fw" aria-hidden="true" title="Copy to use female">&#xf182</i><i class="fa fa-fw" aria-hidden="true" title="Copy to use male">&#xf183</i> Gender
                                                <span class="pull-right text-muted small">
                                                <c:choose>
														<c:when test="${user.gender == true }">
															<strong >Male</strong>
														</c:when>
														<c:otherwise>
															<strong >Female</strong>
														</c:otherwise>
													</c:choose>
                                                </span>
                                        </a>
                                        <a class="list-group-item">
                                                <i class="fa fa-fw" aria-hidden="true" title="Copy to use home">&#xf015</i> Address
                                                <span class="pull-right text-muted small">
                                                        <strong >${user.address }</strong>
                                                </span>
                                        </a>
                                        <a class="list-group-item">
                                                <i class="fa fa-envelope fa-fw"></i> Email
                                                    <span class="pull-right text-muted small">
                                                            <strong class="text-primary">${user.email }</strong>
                                                    </span>
                                            </a>
                                        <a class="list-group-item">
                                                <i class="fa fa-fw" aria-hidden="true" title="Copy to use volume-control-phone">&#xf2a0</i> Cell Phone
                                                <span class="pull-right text-muted small">
                                                        <strong >${user.cellPhone }</strong>
                                                </span>
                                        </a>
                                        <a  class="list-group-item">
                                                <i class="fa fa-fw" aria-hidden="true" title="Copy to use credit-card">&#xf09d</i> Identity Card
                                                <span class="pull-right text-muted small">
                                                        <strong >${user.identityCard }</strong>
                                                </span>
                                        </a>

                                        <a  class="list-group-item">
                                                <i class="fa fa-money fa-fw"></i> Job
                                                    <span class="pull-right text-muted small">
                                                            <strong >${user.job }</strong>
                                                    </span>
                                            </a>

                                            <a  class="list-group-item">
                                                    <i class="fa fa-fw" aria-hidden="true" title="Copy to use wordpress">&#xf19a</i> Nationality
                                                        <span class="pull-right text-muted small">
                                                                <strong >${user.nationality }</strong>
                                                        </span>
                                                </a>
                                    </div> --%>
					<!-- /.list-group -->
					<div class="panel panel-success">
						<div class="panel-heading">Client Information</div>
						<div class="panel-body">
							<div class="row">
								<label class="pull-left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
									class="fa fa-fw" aria-hidden="true" title="Copy to use info">&#xf129</i>
									<spring:message code="label.id" />
								</label> <span class="pull-right text-center small text-danger">
									${user.id }
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
							</div>
							<div class="row">
								<label class="pull-left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<i class="fa fa-fw" aria-hidden="true" title="Copy to use user">&#xf007</i>
									Last Name
								</label> <span class="pull-right text-center small text-primary">
									${user.name }
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
							</div>

							<div class="row">
								<label class="pull-left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<i class="fa fa-fw" aria-hidden="true"
									title="Copy to use user-plus">&#xf234</i> First Name
								</label> <span class="pull-right text-center small text-primary">
									Le Duy
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
							</div>

							<div class="row">
								<label class="pull-left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<i class="fa fa-fw" aria-hidden="true"
									title="Copy to use birthday-cake">&#xf1fd</i> Birthday
								</label> <span class="pull-right text-center small">
									${user.birthday }
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
							</div>

							<div class="row">
								<label class="pull-left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<i class="fa fa-fw" aria-hidden="true"
									title="Copy to use female">&#xf182</i><i class="fa fa-fw"
									aria-hidden="true" title="Copy to use male">&#xf183</i> Gender
								</label> <span class="pull-right text-center small"> <c:choose>
										<c:when test="${user.gender == true }">
											<strong>Male</strong>
										</c:when>
										<c:otherwise>
											<strong>Female</strong>
										</c:otherwise>
									</c:choose>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
							</div>

							<div class="row">
								<label class="pull-left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<i class="fa fa-fw" aria-hidden="true" title="Copy to use home">&#xf015</i>
									Address
								</label> <span class="pull-right text-center small">
									${user.address }
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
							</div>

							<div class="row">
								<label class="pull-left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<i class="fa fa-envelope fa-fw"></i> Email
								</label> <span class="pull-right text-center small"> ${user.email }
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
							</div>

							<div class="row">
								<label class="pull-left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<i class="fa fa-fw" aria-hidden="true"
									title="Copy to use volume-control-phone">&#xf2a0</i> Cell Phone
								</label> <span class="pull-right text-center small">
									${user.cellPhone }
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
							</div>

							<div class="row">
								<label class="pull-left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<i class="fa fa-fw" aria-hidden="true"
									title="Copy to use credit-card">&#xf09d</i> Identity Card
								</label> <span class="pull-right text-center small">
									${user.identityCard }
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
							</div>

							<div class="row">
								<label class="pull-left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<i class="fa fa-fw" aria-hidden="true"
									title="Copy to use wordpress">&#xf19a</i> Nationality
								</label> <span class="pull-right text-center small">
									${user.nationality }
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
							</div>

						</div>
						<div class="panel-footer">
							<a href="/WSClient/" class="btn btn-success btn-block">Cancel</a>
						</div>

					</div>
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->
	</div>

	<!-- script angular-->

	<!-- jQuery -->
	<script src="<c:url value='/resources/js/jquery.min.js'/>"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<c:url value='/resources/js/metisMenu.min.js'/>"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<c:url value='/resources/js/startmin.js'/>"></script>
</body>

</html>
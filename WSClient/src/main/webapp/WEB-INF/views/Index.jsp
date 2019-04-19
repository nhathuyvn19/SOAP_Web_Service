<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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

		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.html">Home</a>
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
					<li><a href="${pageContext.request.contextPath}/?lang=en">English</a></li>
					<li><a href="${pageContext.request.contextPath}/?lang=vi">VN</a></li>
				</ul></li>
		</ul>
		<!-- /.navbar-top-links --> </nav>

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li class="sidebar-search">
						<div class="input-group custom-search-form">
							<form action="https://www.google.com/search" method="GET">
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
					<li>

						<div class="hero-widget well well-sm">
							<div class="icon">
								<i class="glyphicon glyphicon-user"></i>
							</div>
							<div class="text">
								<span class="value">${usersLenght}</span> <label
									class="text-muted"> Users </label>
							</div>
							<div class="options">
								<i class="fa fa-fw" aria-hidden="true"
									title="Copy to use clock-o">&#xf017</i>
								<div id="clockbox"
									style="text-align: center; color: #333; font-weight: bold;"></div>

							</div>
						</div>

					</li>
				</ul>
			</div>
		</div>

		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							<spring:message code="label.headerIndex" />
						</h1>
					</div>
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-info">
							<div class="panel-heading">
								<!-- Button trigger modal -->
								<!--  <button type="button" class="btn btn-primary btn-lg-1"
									data-toggle="modal" data-target="#myModal">
									<i class="fa fa-fw" aria-hidden="true" title="Add user">&#xf007</i>
									add
								</button>-->
								<button class="btn btn-primary btn-lg-1"
									onClick="location.href='/WSClient/insert'">
									<i class="fa fa-fw" aria-hidden="true" title="Add user">&#xf007</i>
									<spring:message code="button.add" />
								</button>


								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel">New Client
													Profile</h4>
											</div>

											<!-- /H. Tạo pushUp -->
											<div class="modal-body">
												<form role="form">
													<div class="col-lg-15">
														<div class="form-group">
															<label>Id</label> <input class="form-control">
															<p class="help-block">DXC001</p>
														</div>
														<div class="form-group">
															<label>Name</label> <input class="form-control">
														</div>
														<div class="form-group">
															<label>Birthday</label> <input class="form-control">
															<p class="help-block">DXC001</p>
														</div>
														<div class="form-group">
															<label>Gender</label> <select id="gender"
																class="form-control">
																<option>Male</option>
																<option>Female</option>
															</select>
														</div>
														<div class="form-group">
															<label>Address</label> <input class="form-control">
														</div>
													</div>

													<div class="col-lg-15">
														<div class="form-group">
															<label>Identity card</label> <input class="form-control">
														</div>
														<div class="form-group">
															<label>Cell phone</label> <input class="form-control">
														</div>
														<div class="form-group">
															<label>Email</label> <input class="form-control">
														</div>
														<div class="form-group">
															<label>Nationality</label> <select id="gender"
																class="form-control">
																<option>Viet Nam</option>
																<option>Lao</option>
															</select>
														</div>
														<div class="form-group">
															<label>Job</label> <select id="gender"
																class="form-control">
																<option>Student</option>
																<option>Engineer</option>
															</select>
														</div>

													</div>
												</form>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">Close</button>
												<button type="button" class="btn btn-primary">Save
													changes</button>
												<!-- <div class="form-group">
                                                        <button type="button" class="btn btn-primary">Submit</button>
                                                    </div> -->
											</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal-dialog -->
								</div>
							</div>
							<!-- /.panel-heading -->

							<div class="panel-body">
								<div class="table-responsive">
									<table
										class="table table-striped table-bordered table-hover dataTable no-footer"
										id="dataTables-example">
										<thead>
											<tr>
												<th style="text-align: center; width: 10%">#</th>
												<th><spring:message code="label.id" /></th>
												<th><spring:message code="label.name" /></th>
												<th><spring:message code="label.birthday" /></th>
												<th><spring:message code="label.gender" /></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${users }" var="user">
												<tr class="odd grade">
													<td style="text-align: center"><c:url
															value="/updateUser/${user.id }" var="urlUpdate"></c:url>
														<a href="${urlUpdate }"> <i class="fa fa-fw"
															aria-hidden="true" title="Edit user">&#xf044</i>
													</a> <c:url value="/deleteUser/${user.id }" var="urlDelete"></c:url>
														<a href="${urlDelete }"> <i class="fa fa-fw"
															aria-hidden="true" title="Delete user">&#xf1f8</i>
													</a> <c:url value="/detailUser/${user.id }" var="urlDetail"></c:url>
														<a href="${urlDetail }"> <i class="fa fa-fw"
															aria-hidden="true" title="Detail user">&#xf129</i>
													</a></td>
													<td>${user.id }</td>
													<td>${user.name }</td>
													<td><fmt:formatDate value="${user.birthday }"
															pattern="yyyy-MM-dd" /></td>
													<td class="center"><c:choose>
															<c:when test="${user.gender == true }">
																<spring:message code="gender.male" />
															</c:when>
															<c:otherwise>
																<spring:message code="gender.female" />
															</c:otherwise>
														</c:choose></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col-lg-12 -->
				</div>

			</div>


			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

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

	<script>
		tday = new Array("Sunday", "Monday", "Tuesday", "Wednesday",
				"Thursday", "Friday", "Saturday");
		tmonth = new Array("January", "February", "March", "April", "May",
				"June", "July", "August", "September", "October", "November",
				"December");

		function GetClock() {
			var d = new Date();
			var nday = d.getDay(), nmonth = d.getMonth(), ndate = d.getDate(), nyear = d
					.getYear();
			if (nyear < 1000)
				nyear += 1900;
			var nhour = d.getHours(), nmin = d.getMinutes(), nsec = d
					.getSeconds(), ap;

			if (nhour == 0) {
				ap = " AM";
				nhour = 12;
			} else if (nhour < 12) {
				ap = " AM";
			} else if (nhour == 12) {
				ap = " PM";
			} else if (nhour > 12) {
				ap = " PM";
				nhour -= 12;
			}

			if (nmin <= 9)
				nmin = "0" + nmin;
			if (nsec <= 9)
				nsec = "0" + nsec;

			document.getElementById('clockbox').innerHTML = "" + tday[nday]
					+ ", " + tmonth[nmonth] + " " + ndate + ", " + nyear
					+ "<br>" + nhour + ":" + nmin + ":" + nsec + ap + "";
		}

		window.onload = function() {
			GetClock();
			setInterval(GetClock, 1000);
		}
	</script>
</body>
</html>
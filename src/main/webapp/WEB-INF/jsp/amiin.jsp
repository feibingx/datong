<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<title>大同中学自荐招生系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<style>
.container {
	padding-top: 200px;
}

.board {
	border: 1px solid;
	background: #EEEEEE;
	border-color: #DDDDDD;
	border-radius: 5px;
	padding: 28px 0 0 0;
}

h1 {
	margin: 20px auto;
	text-align: center;
}

.center {
	margin: 120px auto;
}

.center label {
	font-size: 18px;
}
</style>
<body>
	<div class="page">
		<div class="logo">
			<a href="login" class=titlea" ><img class="pull-left"
				src="assets/img/logo.png"></a>
			<div class="pull-left title">自荐招生系统</div>
		</div>
		<br>
		<div class="center wrapper">
			<c:if test="${errmessage!=null && fn:length(errmessage)>0}">
				<div class="help-inline error">
					<fmt:message key="${errmessage}" />
				</div>
			</c:if>
			<h1>冬令营结果通知入口</h1>
			<div class="board">
				<form class="form-horizontal" action="amiin" method="post">
					<div class="control-group">
						<label class="control-label" for="inputPassword">用户名</label>
						<div class="controls">
							<input type="text" id="username" name="username"
								placeholder="请输入用户名" class="input-large"> <span
								id="input01alert" class="help-inline hidden">不能为空</span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputPassword">密码</label>
						<div class="controls">
							<input type="password" id="password" name="password"
								placeholder="请输入密码" class="input-large"> <span
								id="input02alert" class="help-inline hidden">不能为空</span>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="btn-large btn-primary">登录</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script src="assets/js/jquery.js"></script>
</html>


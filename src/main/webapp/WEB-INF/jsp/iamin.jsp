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

.message {
	
}

.board {
	margin: 100px 0 0 0;
}

.congrate {
	max-width: 600px;
	margin: 0 auto;
	padding: 30px 20px; //
	border: 1px solid; //
	border-color: #DDDDDD;
	border-radius: 5px;
	background-color: #FFE2E2;
}

.board p {
	font-size: 28px;
	font-family: FangSong;
	line-height: 32px;
	margin: 16px;
}

form {
	margin: 20px auto;
	padding: 12px;
	font-size: 24px;
	line-height: 26px;
	font-family: FangSong;
}

.feedbacked {
	weight: border;
	color: #FF0000;
	margin: 0 auto;
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
		<div class="center wrapper board">
			<c:if test="${errmessage!=null && fn:length(errmessage)>0}">
				<div class="help-inline error">
					<fmt:message key="${errmessage}" />
				</div>
			</c:if>
			<c:if test="${iamin.score=='A'}">
				<div class="congrate">
					<p>亲爱的 ${ iamin.studentname } 同学：</p>
					<p>恭喜你在我校开放日体验活动中取得A档优秀成绩。</p>
					<p>取得A档且有意向报考大同中学的同学，我校将通过电话联系你来学校面谈，并根据面谈结果给予相应的自主招生（或推优生）政策。</p>
					<p>请你配合做好如下确认工作。未确认者，我校将不再打扰你。</p>
					<p>谢谢！</p>
					<hr>
					<c:if test="${ iamin.feedback == 'yes'}">
						<p class="feedbacked">你已确认报考</p>
					</c:if>
					<c:if test="${ iamin.feedback == 'no'}">
						<p class="feedbacked">你已确认不报考</p>
					</c:if>
					<form class="form-vertical" action="iamin" method="post">
						<div class="control-group">
							<div class="controls">
								<input type="radio" name="feedback" id="feedback" value="yes" />已知晓我的成绩，确认报考大同中学<br>
								<input type="radio" name="feedback" id="feedback" value="no" />已知晓我的成绩，确认不报考大同中学
								<span id="input01alert" class="help-inline hidden">不能为空</span>
							</div>
						</div>
						<div class="control-group">
							<span class="span3">&nbsp;</span>
							<div class="controls">
								<button type="submit" class="btn-large btn-primary">确认</button>
							</div>
						</div>
					</form>
				</div>
			</c:if>
			<c:if test="${iamin.score=='B'}">
				<div class="congrate">
					<p>亲爱的 ${iamin.studentname} 同学：</p>
					<p>恭喜你在我校开放日体验活动中取得B档优秀成绩。</p>
					<p>取得B档成绩的同学，自主招生（推优生）报考我校，我校将给予在自招测试总成绩上加20分排序录取的优惠政策。</p>
					<p>请你配合做好如下确认工作。未确认者，将视为自动放弃。</p>
					<p>谢谢！</p>
					<hr>
					<c:if test="${ iamin.feedback == 'yes'}">
						<p class="feedbacked">你已确认</p>
					</c:if>
					<form class="form-vertical" action="iamin" method="post">
						<div class="control-group">
							<input type="hidden" name="feedback" id="feedback" value="yes" />
							<span class="span2">&nbsp;</span>
							<div class="controls">
								<button type="submit" class="btn-large btn-primary">确认</button>
							</div>
						</div>
					</form>
				</div>
			</c:if>
			<c:if test="${iamin.score=='C'}">
				<div class="congrate">
					<p>亲爱的 ${iamin.studentname} 同学：</p>
					<p>恭喜你在我校开放日体验活动中取得C档优秀成绩。</p>
					<p>取得C档成绩的同学，自主招生（推优生）报考我校，我校将给予在自招测试总成绩上加10分排序录取的优惠政策。</p>
					<p>请你配合做好如下确认工作。未确认者，将视为自动放弃。</p>
					<p>谢谢！</p>
					<hr>
					<c:if test="${ iamin.feedback == 'yes'}">
						<p class="feedbacked">你已确认</p>
					</c:if>
					<form class="form-vertical" action="iamin" method="post">
						<div class="control-group">
							<input type="hidden" name="feedback" id="feedback" value="yes" />
							<span class="span2">&nbsp;</span>
							<div class="controls">
								<button type="submit" class="btn-large btn-primary">确认</button>
							</div>
						</div>
					</form>
				</div>
			</c:if>
			<c:if test="${iamin.score=='D'}">
				<div class="congrate">
					<p>亲爱的 ${iamin.studentname} 同学：</p>
					<p>恭喜你在我校开放日体验活动中取得D档优秀成绩。</p>
					<p>取得D档成绩的同学，自主招生（推优生）报考我校，我校将给予自招面试资格。</p>
					<p>请你配合做好如下确认工作。未确认者，将视为自动放弃。</p>
					<p>谢谢！</p>
					<hr>
					<c:if test="${ iamin.feedback == 'yes'}">
						<p class="feedbacked">你已确认</p>
					</c:if>
					<form class="form-vertical" action="iamin" method="post">
						<div class="control-group">
							<input type="hidden" name="feedback" id="feedback" value="yes" />
							<span class="span2">&nbsp;</span>
							<div class="controls">
								<button type="submit" class="btn-large btn-primary">确认</button>
							</div>
						</div>
					</form>
				</div>
			</c:if>
			<c:if test="${iamin.score=='E'}">
				<div class="congrate">
					<p>亲爱的 ${iamin.studentname} 同学：</p>
					<p>谢谢你参与我校的开放日活动，欢迎你继续报考大同中学！</p>
				</div>
			</c:if>
		</div>

	</div>
	</div>
</body>
<script src="assets/js/jquery.js"></script>
</html>


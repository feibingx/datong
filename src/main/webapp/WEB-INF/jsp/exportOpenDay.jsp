<%@ page contentType="application/vnd.ms-excel; charset=gbk"%>
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String filename = new String(("�����շ���").getBytes(), "ISO-8859-1");
	response.addHeader("Content-Disposition", "filename=" + filename + ".xls");
%>
<html>
<head>
<meta name="Generator" content="Microsoft Excel 11">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body>
<center><b>ѧ���б�</b></center>
<table border="1" align="center" cellpadding="0" cellspacing="1">
	<thead>
		<tr>
			<th>���</th>
			<th>����</th>
			<th>ѧУ</th>
			<th>�ֵ�</th>
			<th>����</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="dtstudent" items="${dtstudentlist}">
			<tr>
				<td>'${dtstudent.nid}</td>
				<td>${dtstudent.studentname}</td>
				<td>${dtstudent.school}</td>
				<td>${dtstudent.score}</td>
				<!--
				<td><fmt:message key="${dtstudent.sts}" /></td>
				-->
				<td>${dtstudent.feedback}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>
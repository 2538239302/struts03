<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	${name }
	<br>
	<!-- [0].top可以省略 -->
	<s:property value="[0].top.name" />
	<br>
	<s:property value="name" />
	<br>
	<s:property value="age" />
	<br>
	<h1>对象</h1>
	<s:property value="user" />
	<br>
	<s:property value="user.username" />
	<s:property value="user.password" />
	<h1>存集合</h1>
	<s:iterator value="list" var="l1">
		${l1 }
		<s:property value="#l1" />
		<br>
	</s:iterator>
	<h1>JSTL</h1>
	<c:forEach items="${list }" var="l2">
		${l2 }
	</c:forEach>
	<h1>取集合对象</h1>
	<s:iterator value="list1" var="l3">
		<s:property value="#l3.username" />
		<s:property value="#l3.password" />
		${l3.username }
		${l3.password }
		<br>
	</s:iterator>
	<br>
	<c:forEach items="${list1 }" var="l4">
		${l4.username }
		${l4.password }
		<br>
	</c:forEach>
	<s:debug />

</body>
</html>
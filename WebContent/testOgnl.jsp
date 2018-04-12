<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<s:property value="'HELLO'" />
	&nbsp;
	<s:property value="'HELLO'.length()" />
	<br>
	<s:property value="[0].top" />
	<br>
	<s:property value="username" />
	&nbsp;
	<s:property value="password" />
	<br>
	<s:property value="[1].top" />
	<br>
	<s:property value="[1].top.username" />
	&nbsp;
	<s:property value="[1].top.password" />
	<br>
	<h1>取list集合的值</h1>
	<br>
	<s:property value="[2].top" />
	<br>
	<s:iterator value="[2].top" var="l1">
		<s:property value="l1" />&nbsp;&nbsp;&nbsp;
		${l1 }&nbsp;&nbsp;&nbsp;
		<br>
	</s:iterator>

	<br>
	<h1>取集合对象</h1>
	<h2>有var</h2>
	<s:iterator value="[3].top" var="l2">
		<s:property value="#l2.username" />
		<s:property value="#l2.password" />
	</s:iterator>
	<br>
	<br>
	<h2>无var</h2>
	<s:iterator value="[3].top">
		<s:property value="username" />
		<s:property value="password" />
	</s:iterator>
	<s:debug />

</body>
</html>
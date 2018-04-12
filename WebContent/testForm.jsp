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

	<s:form action=""  method="">
		<s:textfield name="username" label="用户名"/>
		<s:password  name="password" label="密码"/>
		<s:radio name="gender" list="#{'0':'男','1':'女' }" label="性别" value="1"/>
		<s:checkboxlist name="code" list="{'java','go','python','c++','kotlin','c#'}" value="{'java','c#'}" label="program"/>
		<s:select name="interest" list="{'lol','dnf','cf','炫舞'}" value="{'dnf'}" label="interest"/>
		<s:file name="upload" label="文件上传"/>
		<s:textarea name="description" label="描述" style="width:300px;height=150px;resize:none"/>
		<s:token/>
		<s:submit value="提交"/>
		<s:reset value="重置"/>
		<s:include value="login.jsp"/>
	</s:form>

</body>
</html>
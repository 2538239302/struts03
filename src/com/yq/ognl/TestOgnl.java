package com.yq.ognl;

import org.junit.Test;

import com.yq.bean.User;

import ognl.Ognl;
import ognl.OgnlContext;
import ognl.OgnlException;

public class TestOgnl {

	@Test
	public void run1() throws OgnlException {
		OgnlContext oc = new OgnlContext();
		Object root = oc.getRoot();
		Object value = Ognl.getValue("'hello'", oc, root);
		Object value1 = Ognl.getValue("'hello'.length()", oc, root);
		System.out.println(value);
		System.out.println(value1);
	}

	@Test
	public void run2() throws OgnlException {
		OgnlContext oc = new OgnlContext();
		oc.put("name", "小明");
		Object root = oc.getRoot();
		Object value = Ognl.getValue("#name", oc, root);
		System.out.println(value);
	}

	@Test
	public void run3() throws OgnlException {
		OgnlContext oc = new OgnlContext();
		User user = new User();
		user.setUsername("admin");
		user.setPassword("123");
		oc.setRoot(user);
		Object root = oc.getRoot();
		Object value = Ognl.getValue("username", oc, root);
		Object value1 = Ognl.getValue("password", oc, root);
		System.out.println(value);
		System.out.println(value1);
	}

}

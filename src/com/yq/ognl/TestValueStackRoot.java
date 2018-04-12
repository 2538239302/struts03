package com.yq.ognl;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import com.yq.bean.User;

public class TestValueStackRoot extends ActionSupport {

	public String testStack() {
		ValueStack vs = ActionContext.getContext().getValueStack();

		User user = new User();
		user.setUsername("admin");
		user.setPassword("123");

		User user1 = new User();
		user1.setUsername("admin1");
		user1.setPassword("123123");

		List<User> list = new ArrayList<User>();
		list.add(user);
		list.add(user1);

		List<String> list1 = new ArrayList<String>();
		list1.add("1");
		list1.add("2");
		list1.add("3");

		vs.push(list);
		vs.push(list1);
		vs.push(user);
		// vs.push(user1);
		vs.push("小明");

		return "testStack";
	}

}

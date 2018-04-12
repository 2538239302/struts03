package com.yq.ognl;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import com.yq.bean.User;

public class TestValueStackContext extends ActionSupport {

	public String testStack1() {

		ValueStack vs = ActionContext.getContext().getValueStack();

		vs.set("name", "小华");
		vs.set("age", 18);
		
		User user = new User();
		user.setPassword("123456");
		user.setUsername("admin");
		vs.set("user", user);
		
		User user1 = new User();
		user1.setPassword("123456123456");
		user1.setUsername("admin1");
		vs.set("user", user);
		
		List<String> list = new ArrayList<String>();
		list.add("1");
		list.add("2");
		list.add("3");
		vs.set("list", list);
		
		List<User> list1 = new ArrayList<User>();
		list1.add(user);
		list1.add(user1);
		vs.set("list1", list1);

		return "context";
	}

}

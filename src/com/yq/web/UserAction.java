package com.yq.web;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yq.bean.User;

public class UserAction extends ActionSupport implements ModelDriven<User> {

	private User user = new User();

	@Override
	public User getModel() {
		return user;
	}

	private String name = "admin";
	private String pwd = "admin";

	public String login() {
		try {
			if (user.getUsername().equals(name) && user.getPassword().equals(pwd)) {
				HttpSession session = ServletActionContext.getRequest().getSession();
				session.setAttribute("user", user);
				return "index";
			}
		} catch (Exception e) {
		}

		return "login";
	}

}

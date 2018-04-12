package com.yq.web;

import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {

	public String index() {
		System.out.println("登录成功！");
		return null;
	}

}

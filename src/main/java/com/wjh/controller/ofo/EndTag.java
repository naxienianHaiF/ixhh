package com.wjh.controller.ofo;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class EndTag extends TagSupport{

	private static final long serialVersionUID = 1L;

	@Override
	public int doEndTag() throws JspException {
		HttpServletRequest request=(HttpServletRequest) pageContext.getRequest();
		
		String header=request.getHeader("referer");
		System.out.println("header:"+header);
		String url="http://"+request.getServerName();
		System.out.println("url:"+url);
		if(header!=null && header.startsWith(url)){
			return EVAL_PAGE;
		}else{
			try {
				pageContext.getOut().print("≤ªƒ‹∑√Œ "+"<br>");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return SKIP_PAGE;
		}
		
	}
}

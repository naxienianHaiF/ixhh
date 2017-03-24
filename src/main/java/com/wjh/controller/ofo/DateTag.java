package com.wjh.controller.ofo;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class DateTag extends TagSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public int doStartTag() throws JspException {
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String string=format.format(new Date());
		try {
			pageContext.getOut().print(string);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return super.doStartTag();
	}
}

package com.wjh.controller.ofo;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * SkipBody or EvalBodyIncludeTag
 * @author WJH
 *
 */
public class SBOEIT extends TagSupport{

	private static final long serialVersionUID = 1L;

	@Override
	public int doStartTag() throws JspException {
		String name=pageContext.getRequest().getParameter("name");
		if(name!=null && "wjh".equals(name)){
			return EVAL_BODY_INCLUDE;
		}else {
			return SKIP_BODY;
		}
	}
}

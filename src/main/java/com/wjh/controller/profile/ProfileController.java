package com.wjh.controller.profile;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * ���˼�������
 * @author WJH
 * @since 2016/12/21
 */

@Controller
public class ProfileController {

	@RequestMapping("/profile.do")
	public String profile(){
		return "profile/profile";
	}
	
}

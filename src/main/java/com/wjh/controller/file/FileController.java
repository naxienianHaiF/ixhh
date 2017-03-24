package com.wjh.controller.file;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FileController {
	
	@RequestMapping("/filedemo.do")
	public String filedemo(){
		return "file/fileindex";
	}

	@RequestMapping("/one.do")
	public String one(){
		return "file/oneUpload";
	}
	@RequestMapping("/more.do")
	public String more(){
		return "file/moreUpload";
	}
	@RequestMapping("download")
	public String download(){
		return "file/download";
	}
	
	@RequestMapping("/chinese.do")
	public String chinese(HttpSession session){
		Locale chinese=Locale.CHINA;
		session.setAttribute("locale", chinese);
		return "file/oneUpload";
	}
	
	@RequestMapping("/english.do")
	public String english(HttpSession session){
		Locale english=Locale.US;
		session.setAttribute("locale", english);
		System.out.println("”¢”Ô");
		return "file/oneUpload";
	}
	
	@RequestMapping("/jstlOne.do")
	public String jstlOne(){
		return "file/jstlOneUpload";
	}
}

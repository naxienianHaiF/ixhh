package com.wjh.controller.file;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class UploadController {

	@RequestMapping("/oneUpload")
	public String oneUpload(@RequestParam("imageFile") MultipartFile imageFile,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String fileUrl=request.getSession().getServletContext().getRealPath("upload");
		System.out.println(fileUrl);
		String filename=imageFile.getOriginalFilename();
		System.out.println("文件名是："+filename);
		
//		InputStream stream=imageFile.getInputStream();
//		FileOutputStream fos=new FileOutputStream(filename);
//		
//		int b=0;
//		while((b=stream.read())!=-1){
//			fos.write(b);
//		}
//		fos.flush();
//		fos.close();
		File targetFile=new File(fileUrl,filename);
		
		System.out.println("路径："+targetFile.getName());
		//目录不存在，则创建目录
		if(!targetFile.exists()){
			targetFile.mkdirs();
		}
		try {
			imageFile.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
//		File dir=new File(fileUrl);
//		if(!dir.exists()){
//			dir.mkdirs();
//		}
//		
//		System.out.println("文件上传到："+fileUrl+filename);
//		File target=new File(fileUrl,filename);
//		if(!target.exists()){
//			try {
//				target.createNewFile();
//			} catch (Exception e) {
//				// TODO: handle exception
//			}
//		}
//		try {
//			imageFile.transferTo(target);
//		} catch (IllegalStateException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
		
		Cookie cookie=new Cookie("name", filename);
		response.addCookie(cookie);
//		cookie.setPath("/wjh");
		cookie.setVersion(2);
		cookie.setMaxAge(24*60*60);
		
		Cookie[] cookies=request.getCookies();
		for(Cookie c:cookies){
			System.out.println(c.getName()+"="+c.getValue());
		}
//		return "redirect:http://123.56.223.116:8080/ixhh/"+"upload/"+filename;
		return "file/filesuccess";
	}
	
	@RequestMapping("/moreUpload.do")
	public String moreUpload(HttpServletRequest request){
		MultipartHttpServletRequest multipartHttpServletRequest=(MultipartHttpServletRequest) request;
		Map<String, MultipartFile> files=multipartHttpServletRequest.getFileMap();
		
		String basePath=request.getSession().getServletContext().getRealPath("upload");
		System.out.println("文件保存的路径是："+basePath);
		File dir=new File(basePath);
		if(!dir.exists()){
			dir.mkdirs();
		}
		
		List<String> list=new ArrayList<String>();
		for(MultipartFile m:files.values()){
			File targetFile=new File(basePath,m.getOriginalFilename());
			if(!targetFile.exists()){
				try {
					targetFile.createNewFile();
				} catch (IOException e) {
					e.printStackTrace();
				}
				try {
					m.transferTo(targetFile);
					list.add("http://localhost:8080/upload/upload/"+m.getOriginalFilename());
					System.out.println("http://localhost:8080/upload/upload/"+m.getOriginalFilename());
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		request.getSession().setAttribute("list", list);
		return "file/moreUploadResult";
	}
	
}

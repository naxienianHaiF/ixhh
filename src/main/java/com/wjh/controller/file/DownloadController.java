package com.wjh.controller.file;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DownloadController {

	@RequestMapping("/filedownload.do")
	public String filedownload(@RequestParam String fileName,HttpServletRequest request,HttpServletResponse response){
		response.setContentType("text/html;charset=utf-8");
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		BufferedInputStream bis=null;
		BufferedOutputStream bos=null;
		
		String xzpath=request.getSession().getServletContext().getRealPath("upload/");
//		String downloadPath=xzpath+fileName;
		File downloadFile=new File(xzpath, fileName);
		System.out.println("ÎÄ¼þÏÂÔØ£º"+downloadFile.getName());
		
		long fileLength=downloadFile.length();
		response.setContentType("application/x-msdownload");
		response.setHeader("Content-Length", String.valueOf(fileLength));
		response.setHeader("Content-disposition", "attachment;fileName="+new String(fileName.getBytes()));
		try {
			bis=new BufferedInputStream(new FileInputStream(downloadFile));
			bos=new BufferedOutputStream(response.getOutputStream());
			byte[] buff=new byte[1024];
			int bytesRead=0;
			while((bytesRead=bis.read(buff, 0, buff.length))!=-1){
				bos.write(buff,0,bytesRead);
			}
		} catch (IOException e1) {
			e1.printStackTrace();
		}finally{
			try {
				bos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			try {
				bis.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return "";
	}
}

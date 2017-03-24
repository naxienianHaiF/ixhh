package com.wjh.controller.ofo;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wjh.ofo.entityAndDao.OFO;
import com.wjh.ofo.entityAndDao.OFODao;

@Controller
public class OFOController {

	@Autowired
	private OFODao oFODao;
	
	//��ȡ���ݿ������еļ�¼����ʾ��ҳ����
	@RequestMapping("/xhc.do")
	public String ofoAll(HttpSession session){
		if(oFODao!=null){
			List<OFO> list=oFODao.getAll();
			if(list.size()==0){
				list.add(new OFO(1, "void", "void"));
			}
			session.setAttribute("ofolist", list);
		}
		return "ofo/ofo";
	}
	
	@RequestMapping("/addpage.do")
	public String addofoInfo(){
		
		return "ofo/addInfo";
	}
	
	@RequestMapping("/addxhc.do")
	public String addInfo(HttpServletRequest request,HttpSession session){
		String bikenumber=request.getParameter("bikenumber");
		String bikeps=request.getParameter("bikeps");
//		System.out.println(bikenumber);
//		System.out.println(bikeps);
		System.out.println(bikenumber.trim().length());
		System.out.println(bikeps.trim().length());
		//������벻Ϊ�վͲ���
		if(bikenumber.trim().length()!=0 || bikeps.trim().length()!=0){
			OFO ofo=new OFO();
			ofo.setbikenumber(bikenumber);
			ofo.setBikeps(bikeps);
			oFODao.insertofo(ofo);
		}
		
		String result=ofoAll(session);
		return result;
	}
	
	@RequestMapping("/xhcfind.do")
	public void ofofind(HttpServletRequest request,HttpServletResponse response){
		String bikenumber=request.getParameter("bikenumber");
		String bikeps=new String();
		if(bikenumber!=null){
			System.out.println(bikenumber);
			OFO ofo=oFODao.ofofind(bikenumber);
			if(ofo!=null){
				bikeps="����Ϊ��"+ofo.getBikeps();
			}else {
				bikeps="���벻����!";
			}
		}
		try {
			response.setCharacterEncoding("utf-8");
			response.getWriter().print(bikeps);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/myselfTag.do")
	public String myselfTag(){
		return "myselfTag/tag";
	}
	
	@RequestMapping("/skiptag.do")
	public String skiptag(){
		return "myselfTag/tag";
	}
	
	@RequestMapping("/endtag.do")
	public String endtag(){
		return "myselfTag/endtag";
	}
}

package com.wjh.ofo;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wjh.ofo.entityAndDao.OFO;
import com.wjh.ofo.entityAndDao.OFODao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mvc.xml")
public class TestOFO {

	@Autowired
	private OFODao oFODao;
	
	@Test
	public void testOFO(){
		if(oFODao!=null){
			System.out.println("success");
		}
		List<OFO> list=oFODao.getAll();
		System.out.println(list.get(0));
		System.out.println(list.size());
	}
	
	@Test
	public void testInsert(){
		OFO ofo=new OFO();
		ofo.setbikenumber("123456");
		ofo.setBikeps("4567");
		
		int sun=oFODao.insertofo(ofo);
		System.out.println(sun);
	}
	
	@Test
	public void testFind(){
		OFO ofo=oFODao.ofofind("123456");
		if(ofo!=null){
			System.out.println(ofo);
		}else {
			System.out.println("²»´æÔÚ");
		}
	}
	
	@Test
	public void testFindResultString(){
		String string=oFODao.ofofindString("188248");
		System.out.println(string);
	}
}

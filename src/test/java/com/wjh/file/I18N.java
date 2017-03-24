package com.wjh.file;

import java.util.Locale;
import java.util.ResourceBundle;

import org.junit.Test;


public class I18N {

	@Test
	public void i18nTest(){
		Locale locale=Locale.CHINA;
		ResourceBundle bundle=ResourceBundle.getBundle("i18n/msg",locale);
		System.out.println(bundle.getString("file"));
	}
}

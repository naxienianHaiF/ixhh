package com.wjh.ofo.entityAndDao;

import java.util.List;

public interface OFODao {

	/**
	 * @return 数据库中表的所有OFO记录
	 */
	List<OFO> getAll();
	/**
	 * @param ofo 待插入的数据记录
	 * @return 插入OFO数据到数据库中
	 */
	int insertofo(OFO ofo);
	/**
	 * 根据车牌号获取密码
	 * @param str 查找的车牌号码
	 * @return OFO对象
	 */
	OFO ofofind(String str);
	/**
	 * 根据车牌号获取密码
	 * @param str 查找的车牌号码
	 * @return 车牌号码对应的密码
	 */
	String ofofindString(String str);
}

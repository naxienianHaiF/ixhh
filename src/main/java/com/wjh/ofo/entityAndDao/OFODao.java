package com.wjh.ofo.entityAndDao;

import java.util.List;

public interface OFODao {

	/**
	 * @return ���ݿ��б������OFO��¼
	 */
	List<OFO> getAll();
	/**
	 * @param ofo ����������ݼ�¼
	 * @return ����OFO���ݵ����ݿ���
	 */
	int insertofo(OFO ofo);
	/**
	 * ���ݳ��ƺŻ�ȡ����
	 * @param str ���ҵĳ��ƺ���
	 * @return OFO����
	 */
	OFO ofofind(String str);
	/**
	 * ���ݳ��ƺŻ�ȡ����
	 * @param str ���ҵĳ��ƺ���
	 * @return ���ƺ����Ӧ������
	 */
	String ofofindString(String str);
}

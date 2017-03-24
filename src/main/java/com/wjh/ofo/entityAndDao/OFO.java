package com.wjh.ofo.entityAndDao;

public class OFO {

	private int oid;
	private String bikenumber;  //³µÅÆºÅ
	private String bikeps;      //ÃÜÂë
	
	public OFO(){}
	
	public OFO(int oid, String bikenumber, String bikeps) {
		super();
		this.oid = oid;
		this.bikenumber = bikenumber;
		this.bikeps = bikeps;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public String getbikenumber() {
		return bikenumber;
	}

	public void setbikenumber(String bikenumber) {
		this.bikenumber = bikenumber;
	}

	public String getBikeps() {
		return bikeps;
	}

	public void setBikeps(String bikeps) {
		this.bikeps = bikeps;
	}

	@Override
	public String toString() {
		return "OFO [oid=" + oid + ", bikenumber=" + bikenumber + ", bikeps="
				+ bikeps + "]";
	}
	
	
}

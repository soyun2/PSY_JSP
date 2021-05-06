package daegu;

public class List {
	private String name; //name
	private String type; //code4
	private String addr_jibon; //jibon_addr
	private String addr_doro; //code_doroname
	private String building_bon;
	private String building_bu;
	@Override
	public String toString() {
		return "List [name=" + name + ", type=" + type + ", addr_jibon=" + addr_jibon + ", addr_doro=" + addr_doro
				+ "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAddr_jibon() {
		return addr_jibon;
	}
	public void setAddr_jibon(String addr_jibon) {
		this.addr_jibon = addr_jibon;
	}
	public String getAddr_doro() {
		return addr_doro;
	}
	public void setAddr_doro(String addr_doro) {
		this.addr_doro = addr_doro;
	}
	public String getBuilding_bon() {
		return building_bon;
	}
	public void setBuilding_bon(String building_bon) {
		this.building_bon = building_bon;
	}
	public String getBuilding_bu() {
		return building_bu;
	}
	public void setBuilding_bu(String building_bu) {
		this.building_bu = building_bu;
	}	
}

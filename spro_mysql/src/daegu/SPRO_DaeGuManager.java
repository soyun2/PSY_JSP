package daegu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SPRO_DaeGuManager {
	public List<SPRO_DaeGu> select(int pageNum) {
		List<SPRO_DaeGu> list = new ArrayList<SPRO_DaeGu>();
		pageNum=0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			Class.forName(DBInfo.mysql_class);
			conn = DriverManager.getConnection(DBInfo.mysql_url, DBInfo.mysql_id, DBInfo.mysql_pw);
			pstmt = conn.prepareStatement("select * from daegu order by idx limit "+pageNum+",10");
			rs = pstmt.executeQuery();
			while(rs.next()){
				SPRO_DaeGu dglist = new SPRO_DaeGu();
				dglist.setIdx(rs.getInt("idx"));
				dglist.setName(rs.getString("name"));
				dglist.setLocation(rs.getString("location"));
				dglist.setCode1(rs.getString("code1"));
				dglist.setCode1_name(rs.getString("code1_name"));
				dglist.setCode2(rs.getString("code2"));
				dglist.setCode2_name(rs.getString("code2_name"));
				dglist.setCode_3(rs.getString("code_3"));
				dglist.setCode4(rs.getString("code4"));
				dglist.setCode4_name(rs.getString("code4_name"));
				dglist.setCode_sido(rs.getString("code_sido"));
				dglist.setCode_sidoname(rs.getString("code_sidoname"));
				dglist.setCode_gu(rs.getString("code_gu"));
				dglist.setCode_guname(rs.getString("code_guname"));
				dglist.setCode_dong(rs.getString("code_dong"));
				dglist.setCode_dongname(rs.getString("code_dongname"));
				dglist.setCode_legar(rs.getString("code_legar"));
				dglist.setCode_legarname(rs.getString("code_legarname"));
				dglist.setCode_jibun(rs.getString("code_jibun"));
				dglist.setCode_jibunname(rs.getString("code_jibunname"));
				dglist.setCode_gubun(rs.getString("code_gubun"));
				dglist.setCode_gubunname(rs.getString("code_gubunname"));
				dglist.setJibon_bon(rs.getString("jibon_bon"));
				dglist.setJibon_bu(rs.getString("jibon_bu"));
				dglist.setJibon_addr(rs.getString("jibon_addr"));
				dglist.setCode_doro(rs.getString("code_doro"));
				dglist.setCode_doroname(rs.getString("code_doroname"));
				dglist.setBuilding_bon(rs.getString("building_bon"));
				dglist.setBuilding_bu(rs.getString("building_bu"));
				dglist.setBuilding_num(rs.getString("building_num"));
				dglist.setBuilding_name(rs.getString("building_name"));
				dglist.setDoro_addr(rs.getString("doro_addr"));
				dglist.setOldzip(rs.getString("oldzip"));				
				dglist.setNewzip(rs.getString("newzip"));				
				dglist.setDonginfo(rs.getString("donginfo"));				
				dglist.setFloorinfo(rs.getString("floorinfo"));				
				dglist.setHoinfo(rs.getString("hoinfo"));				
				dglist.setLongitude(rs.getString("longitude"));				
				dglist.setLatitude(rs.getString("latitude"));
				list.add(dglist);
		}}
		catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception ex){				
			}		
		}
		return list;
	}
}
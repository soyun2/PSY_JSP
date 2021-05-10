package daegu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Daegu_DBManager {

	public ArrayList<List> select() {
		ArrayList<List> list = new ArrayList<List>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName(DBInfo.mysql_class);
			conn = DriverManager.getConnection(DBInfo.mysql_url, DBInfo.mysql_id, DBInfo.mysql_pw);
			pstmt = conn.prepareStatement("SELECT NAME, CODE4, JIBON_ADDR, CODE_DORONAME, building_bon, building_bu FROM DAEGU LIMIT 100");
			rs = pstmt.executeQuery();
			while(rs.next()){
				String doro = rs.getString("code_doroname")+" "+rs.getString("BUILDING_BON")+"-"+rs.getString("BUILDING_BU");
				String last_doro = doro.substring(doro.length()-1);
				if(last_doro.contains("-"))
				{
					doro = doro.substring(0,doro.length()-1);
				}
				
				List dg_list = new List();
				dg_list.setName(rs.getString("name"));
				dg_list.setType(rs.getString("code4"));
				dg_list.setAddr_jibon(rs.getString("jibon_addr"));
				dg_list.setAddr_doro(doro);
				list.add(dg_list);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			try{
				if (rs!= null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception ex){}
		}
		return list;
	}
}

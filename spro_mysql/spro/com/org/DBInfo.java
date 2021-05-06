package spro.com.org;

public interface DBInfo {
	String mysql_url = "jdbc:mysql://127.0.0.1:3306/spro?useUnicode=true&characterEncoding=utf8"; 
	String mysql_id = "root";
	String mysql_pw = "1234";
	String mysql_class="com.mysql.cj.jdbc.Driver";
	String ora_class = "oracle.jdbc.driver.OracleDriver";	
	String ora_url = "jdbc:oracle:tdin:@localhost:1521:xe";
}

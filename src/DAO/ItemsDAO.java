package DAO;
import entity.items;
import until.DBHelper;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
public class ItemsDAO {
	public static boolean checklogin(String name,String passwords) {//判断输入用户信息是否正确
			items it=new items();
			Connection conn=null;
			Statement stmt=null;
			ResultSet re=null;
			String sql1="select name from studentmes where name='"+name+"'";//学生
			String sql2="select name from teacher where name='"+name+"'";//教师
		try {
			if(conn==null){//建立连接
				conn=DBHelper.getConnection();
			}
			stmt=conn.createStatement();
			re=stmt.executeQuery(sql1);
			it.setId(re.getInt("id"));
			it.setName(re.getString("name"));
			it.setSex(re.getString("sex"));
			it.setPassword(re.getString("password"));
			it.setClassNumber(re.getInt("ClassNumber"));
			it.setChineseScore(re.getInt("ChineseScore"));
			it.setMathScore(re.getInt("MathScore"));
			it.setEnglishScore(re.getInt("EnglishScore"));
			it.setCppScore(re.getInt("CppScore"));
			it.setJavaScore(re.getInt("JavaScore"));
			it.setJspScore(re.getInt("JspScore"));
			it.setMysqlScore(re.getInt("mysqlScore"));
			it.setCScore(re.getInt("CScore"));
			it.setTPScore(re.getInt("TPScore"));
			it.setHead_sculpture(re.getInt("head_sculpture"));
			it.setGarde(re.getInt("grade"));
			it.setYear(re.getInt("year"));
				
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sql1="select name from studentmes where name=";
		}
		return false;
	}
	
public static void main(String[] args)  {
}
}

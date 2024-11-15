//RegistrationControl
package TeacherLogin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class TeacherLoginControl {
	
	//connect DB
	

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	//Insert Student
	
	
	// In RegistrationControl.java

	// Validate login credentials
	public static TeacherLogInModel validateLogin(String tEmail, String tpass) {
	    TeacherLogInModel teacher = null;
	    try {
	        // DB Connection Call
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();

	        String sql = "SELECT * FROM admin WHERE tEmail = '" + tEmail + "' AND tpass = '" + tpass+ "'";
	        rs = stmt.executeQuery(sql);

	        if (rs.next()) {
	           
	            String tName = rs.getString("tName");
	           

	      teacher = new TeacherLogInModel( tName,  tEmail, tpass);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return teacher;
	}
	

	
	
		


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
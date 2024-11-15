//RegistrationControl
package Registration;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RegistrationControl {
	
	//connect DB
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	//Insert Student
	
	public static boolean insertdata(String stName, String stEmail, String mobileNumber, String password) {
		boolean isSuccess = false;
		
		try {
			//DB Connection Call
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into student value(0, '"+stName+"', '"+stEmail+"', '"+mobileNumber+"', '"+password+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	// read Student details
	
	public static List<RegisterModel> getById (String Id){
			
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <RegisterModel> student = new ArrayList<>();
		
		
	
		try {
			//DBConnection
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//Query
			
			String sql = "select * from student where id '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int student_Id = rs.getInt(1);
				String stName = rs.getString(2);
				String stEmail = rs.getString(3);
				String mobileNumber = rs.getString(4);
				String password = rs.getString(5);
				
				RegisterModel std = new RegisterModel(student_Id, stName, stEmail, mobileNumber, password );
				student.add(std);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return student;
		
		
			
	}
	
	//All Student 
	
	
	public static  List <RegisterModel> getAllStudent(){
		
		ArrayList <RegisterModel> students = new ArrayList<>();
		
		
		try {
			//DBConnection
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//Query
			
			String sql = "select * from student ";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int student_Id = rs.getInt(1);
				String stName = rs.getString(2);
				String stEmail = rs.getString(3);
				String mobileNumber = rs.getString(4);
				String password = rs.getString(5);
			
				RegisterModel std = new RegisterModel(student_Id, stName, stEmail, mobileNumber,password );
				students.add(std);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return students;
		
		
	}
	// Add this new method to check if email exists
	public static boolean isEmailExists(String stEmail) {
	    boolean isExists = false;

	    try {
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        String sql = "SELECT * FROM student WHERE stEmail = '" + stEmail + "'";
	        rs = stmt.executeQuery(sql);

	        if (rs.next()) {
	            isExists = true;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isExists;
	}

	// In RegistrationControl.java

	// Validate login credentials
	public static RegisterModel validateLogin(String stEmail, String password) {
	    RegisterModel student = null;
	    try {
	        // DB Connection Call
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();

	        String sql = "SELECT * FROM student WHERE stEmail = '" + stEmail + "' AND password = '" + password + "'";
	        rs = stmt.executeQuery(sql);

	        if (rs.next()) {
	            int student_Id = rs.getInt("student_Id");
	            String stName = rs.getString("stName");
	            String mobileNumber = rs.getString("mobileNumber");

	            student = new RegisterModel(student_Id, stName, stEmail, mobileNumber, password);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return student;
	}
	
	
	//update student details
	
	public static boolean updateStudentDetails(String student_Id, String stName, String stEmail, String mobileNumber, String password ){
		
		
		try {
			//DBConnection
			 con = DBConnection.getConnection();
		        stmt = con.createStatement();
		        
		        String sql = "update student set stName = '"+stName+"', stEmail = '"+stEmail+"', mobileNumber = '"+mobileNumber+"', password = '"+password+"' where student_Id = " + student_Id;

		        
		 int rs = stmt.executeUpdate(sql);
		 
		 if(rs>0) {
			 
			 isSuccess = true;
			 
		 }
		 else {
			 
			 isSuccess = false;
			 
		 }
		 
		}catch (Exception e) {
	        e.printStackTrace();
	    }
		
		return isSuccess;
		
		
	}
	

    public boolean deleteStudent(int studentId) {
        boolean rowDeleted = false;
        String sql = "DELETE FROM student WHERE student_Id = ?";
        
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
             
            statement.setInt(1, studentId);
            rowDeleted = statement.executeUpdate() > 0;
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return rowDeleted;
    }


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
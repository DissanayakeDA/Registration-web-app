package ExamPackage;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;

import java.util.ArrayList;
import java.util.List;

public class ExamControl {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean insertdata(String Title, String Date, String TotalParticipants, String Duration, String TotalQuestions, String Time, String Password) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into exam values(0, '"+Title+"','"+Date+"' ,'"+TotalParticipants+"', '"+Duration+"' , '"+TotalQuestions+"', '"+Time+"', '"+Password+"')";
			
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
	//getById
	public static List<ExamModel> getById(String paperID1){
		
		int convertedID = Integer.parseInt(paperID1);
		
		ArrayList<ExamModel> exam = new ArrayList<>();
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from exam where paperID = '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int paperID = rs.getInt(1);
				String Title = rs.getString(2);
				String Date = rs.getString(3);
				String TotalParticipants = rs.getString(4);
				String Duration = rs.getString(5);
				String TotalQuestions = rs.getString(6);
				String Time = rs.getString(7);
				String Password = rs.getString(8);
				
				ExamModel ex = new ExamModel(paperID, Title, Date, TotalParticipants, Duration, TotalQuestions, Time, Password);
			    
				exam.add(ex);
			
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		return exam;
	}
	
	//getAllData
	public static List<ExamModel> getAllExam(){
		
		ArrayList<ExamModel> exams = new ArrayList<>();
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from exam";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int paperID = rs.getInt(1);
				String Title = rs.getString(2);
				String Date = rs.getString(3);
				String TotalParticipants = rs.getString(4);
				String Duration = rs.getString(5);
				String TotalQuestions = rs.getString(6);
				String Time = rs.getString(7);
				String Password = rs.getString(8);
				
				ExamModel ex = new ExamModel(paperID, Title, Date, TotalParticipants, Duration, TotalQuestions, Time, Password);
			    
				exams.add(ex);
			
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
			
		}finally {
		    try {
		        if (rs != null) rs.close();
		        if (stmt != null) stmt.close();
		        if (con != null) con.close();
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		}

		
		return exams;
		
	}
	
	//update
	
	public static boolean updatedata(String paperID, String Title, String Date, String TotalParticipants, String Duration, String TotalQuestions, String Time, String Password) {
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "update exam set title= '"+Title+"', date= '"+Date+"', totalParticipants= '"+TotalParticipants+"', duration= '"+Duration+"', totalQuestions= '"+TotalQuestions+"',time= '"+Time+"', password= '"+Password+"'"
				+"where paperID = '"+paperID+"' ";
			
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
	
	//delete
	
	public static boolean deletedata(String paperID) {
		
		try {
		
		int convID = Integer.parseInt(paperID);
		
		
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "delete from exam where paperID = '"+convID+"'";
			
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
	
	public static boolean isPasswordUnique(String password) {
	    boolean isUnique = false;
	    try {
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        
	        String sql = "SELECT * FROM exam WHERE Password = '" + password + "'";
	        rs = stmt.executeQuery(sql);
	        
	       
	        if (!rs.next()) {
	            isUnique = true;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (stmt != null) stmt.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	    
	    return isUnique;
	}

}

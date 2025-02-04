package  ResultPublishing;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class resultControl {
	
	private static ResultSet rs = null;
	
	// Insert data function
	public static boolean insertdata(String studentId, String examName, String examId, String score, String grade) {
		boolean isSuccess = false;
		Connection con = null;
		Statement stmt = null;
		
		try {
			// Get DB Connection
			con = DBConnection.getConnection();
			
			if (con != null) {
				// Create a statement
				stmt = con.createStatement();
				
				// SQL query to insert data
				String sql = "INSERT INTO ex_results VALUES (0, '" + studentId + "', '" + examName + "', '" + examId + "', '" + score + "', '" + grade + "')";
				int rs = stmt.executeUpdate(sql);  // Execute the query
				
				// Check if insertion was successful
				if (rs > 0) {
					isSuccess = true;
				}
			} else {
				System.out.println("Connection is null. Cannot insert data.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// Close statement and connection resources
			try {
				if (stmt != null) {
					stmt.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return isSuccess;
	}
	
	//GetById
	
	public static List<resultModel> getById (String Id){
		int convertedId = Integer.parseInt(Id);
		ArrayList<resultModel> result = new ArrayList<>();
		
//		boolean isSuccess = false;
		Connection con = null;
		Statement stmt = null;
		
		try {
			//DBConnection
			
			con=DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from ex_results where id '"+convertedId+"'";
			
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int resultId = rs.getInt(1);
				String studentId = rs.getString(2);
				String examName = rs.getString(3);
				String examId = rs.getString(4);
				String score = rs.getString(5);
				String grade = rs.getString(6);
				
				resultModel r = new resultModel (resultId,studentId,examName,examId,score,grade);
				result.add(r);
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result ;
	}
	
	//GetAllData 
	public static List<resultModel> GetResult(){
		
		ArrayList<resultModel> results = new ArrayList<>();
		
//		boolean isSuccess = false;
		Connection con = null;
		Statement stmt = null;
		
		try {
			//DBConnection
			
			con=DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from ex_results";
			
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int resultId = rs.getInt(1);
				String studentId = rs.getString(2);
				String examName = rs.getString(3);
				String examId = rs.getString(4);
				String score = rs.getString(5);
				String grade = rs.getString(6);
				
				resultModel r = new resultModel (resultId,studentId,examName,examId,score,grade);
				results.add(r);
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return results ;
	}
	
	//update data
	
	public static boolean updatedata(String resultId ,String studentId,String examName,String examId,String score,String grade) {
		boolean isSuccess = false;
		Connection con = null;
		Statement stmt = null;
		try {
			//Db connection 
			con=DBConnection.getConnection();
			stmt = con.createStatement();
			
			//sql query 
			
			String sql = "update ex_results set studentId='"+studentId+"',examName='"+examName+"',examId='"+examId+"',score='"+score+"',grade='"+grade+"'"
		             + "where resultId ='"+resultId+"'";

			
		/*	String sql = "update ex_results set studentId='"+studentId+"',examName='"+examName+"',examId='"+examId+"',score='"+score+"',grade='"+grade+"'"
			             + "where id ='"+resultId+"'";*/
			int rs = stmt.executeUpdate(sql);
			if(rs >0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	
	//delete data 
	public static boolean deletedata (String resultId) {
		boolean isSuccess = false;
		Connection con = null;
		Statement stmt = null;
		
		int convId = Integer.parseInt(resultId);
		
		try {
			//DB connection
			con=DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from ex_results where resultId='"+convId+"'";
			
			int rs = stmt.executeUpdate(sql);
			if(rs >0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
}

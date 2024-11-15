package onlineexaminationpackage;

	import java.sql.Connection;
	import java.sql.ResultSet;
	import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

	public class controler {
	// connect DB
		private static boolean isSucess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		//insert data function
		
		public static boolean insertdata(String name,String email,String address,String city,String state,String zipcode,String cardname,String cardnumber,String expyear,String expmonth,String cvv,String amount) {
		
			boolean isSucess = false;
			
			try {
				//DB connection call
				
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				//sql query
				
				String sql = "insert into examcharge values(0,'"+name+"','"+email+"','"+address+"','"+city+"','"+state+"','"+zipcode+"','"+cardname+"','"+cardnumber+"','"+expyear+"','"+expmonth+"','"+cvv+"','"+amount+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSucess = true;
				}
				else {
					isSucess = false;
				}
				
			}catch(Exception e) {
				
				e.printStackTrace();
			}
			
			return isSucess;
					
	}
		
		public static List<examinationmodel>getById (String Id){
			
			int convertedID =Integer.parseInt(Id);
			ArrayList <examinationmodel> examcharge = new ArrayList<>();
			
			try {
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				String sql = "select * from examcharge where id '"+convertedID+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String email = rs.getNString(3);
					String address = rs.getString(4);
					String city = rs.getString(5);
					String state = rs.getString(6);
					String zipcode = rs.getString(7);
					String cardname = rs.getString(8);
					String cardnumber = rs.getString(9);
					String expmonth = rs.getNString(10);
					String expyear = rs.getNString(11);
					String cvv = rs.getNString(12);
					String amount = rs.getNString(13);
					
					examinationmodel ex = new examinationmodel(id,name,email,address,city,state,zipcode,cardname,cardnumber, expmonth, expyear, cvv,amount);
					examcharge.add(ex);
				}
				
			}
			
			catch(Exception e) {
				
				e.printStackTrace();
			}
			
			return examcharge;
			
		}
		//get all data
		public static List<examinationmodel> getAllexamcharge(){
		ArrayList <examinationmodel> examcharges = new ArrayList<>();
		
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql = "select * from examcharge";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getNString(3);
				String address = rs.getString(4);
				String city = rs.getString(5);
				String state = rs.getString(6);
				String zipcode = rs.getString(7);
				String cardname = rs.getString(8);
				String cardnumber = rs.getString(9);
				String expmonth = rs.getNString(10);
				String expyear = rs.getNString(11);
				String cvv = rs.getNString(12);
				String amount = rs.getNString(13);
				
				
				examinationmodel ex = new examinationmodel(id,name,email,address,city,state,zipcode,cardname,cardnumber, expmonth, expyear, cvv, amount);
				examcharges.add(ex);
			}
			
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return examcharges;
		
		}
		public static boolean updatedata(String id,String name,String email,String address,String city,String state,String zipcode,String cardname,String cardnumber,String expmonth,String expyear,String cvv,String amount) {
			
			try {
				//DB connection call
				
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				//sql query
				String sql ="update examcharge set name='"+name+"',email='"+email+"',address='"+address+"',city='"+city+"',state='"+state+"',zipcode='"+zipcode+"',cardname='"+cardname+"',cardnumber='"+cardnumber+"',expmonth='"+expmonth+"',expyear='"+expyear+"',cvv='"+cvv+"',amount='"+amount+"'"
				+"where id='"+id+"'";
				
				int rs =stmt.executeUpdate(sql);
				if(rs > 0) {
					isSucess = true;
				}
				else {
					isSucess = false;
				}
				
				
				
			}catch(Exception e) {
				
				e.printStackTrace();
			}
			
			return isSucess;
			
		}
		public static boolean deletedata(String id) {
			
			try {
				//DB connection call
				int convID = Integer.parseInt(id);
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				String sql = "delete from examcharge where id='"+convID+"'";
				int rs =stmt.executeUpdate(sql);
				if(rs > 0) {
					isSucess = true;
				}
				else {
					isSucess = false;
				}
				
				
				
			}catch(Exception e) {
				
				e.printStackTrace();
			}
			
			return isSucess;
			
		}
		
	}
		
		
	
	

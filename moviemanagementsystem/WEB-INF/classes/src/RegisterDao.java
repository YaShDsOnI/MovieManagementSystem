package Model.Register;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Model.Register.RegisterBean;
import Model.DBConnectivity.DBConnection;

public class RegisterDao {
	public String registerUser(RegisterBean registerBean) {
		String name = registerBean.getname();
		String email = registerBean.getemail();
		String username = registerBean.getusername();
		String password = registerBean.getpassword();
		
		Connection con = null;
		PreparedStatement preparedStatement = null;
		try {
			con = DBConnection.createConnection();
			String query = "insert into users(srno,name,email,username,password) values (NULL,?,?,?,?)";
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, email);
			preparedStatement.setString(3, username);
			preparedStatement.setString(4, password);
			
			int i=preparedStatement.executeUpdate();
			
			if(i!=0)
				return "SUCCESS";
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return "Something went Wrong";
	}
}

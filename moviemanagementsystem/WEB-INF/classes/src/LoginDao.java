package Model.Login;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Model.Login.LoginBean;
import Model.DBConnectivity.*;

public class LoginDao {
	public String authenticateUser(LoginBean loginBean) {
		String username = loginBean.getusername();
		String password = loginBean.getpassword();
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		String usernameDB = "";
		String passwordDB = "";
		
		try {
			con = DBConnection.createConnection();
			statement = con.createStatement();
			resultSet = statement.executeQuery("select username,password from users");
			
			while(resultSet.next()) {
				usernameDB = resultSet.getString("username");
				passwordDB = resultSet.getString("password");
				
				if(username.equals(usernameDB) && password.equals(passwordDB)) {
					return "SUCCESS";
				}
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return "Invalid User Credentials";
	}
}

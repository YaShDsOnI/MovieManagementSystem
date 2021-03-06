package Model.Rating;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Model.Rating.RatingBean;
import Model.DBConnectivity.DBConnection;

public class RatingDao {
	public String ratingMovie(RatingBean ratingBean) {
		String moviename = ratingBean.getmoviename();
		String rating = ratingBean.getrating();
		String descip = ratingBean.getdescip();
		
		Connection con = null;
		PreparedStatement preparedStatement = null;
		try {
			con = DBConnection.createConnection();
			String query = "insert into review(rno,moviename,rating,descip) values (NULL,?,?,?)";
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, moviename);
			preparedStatement.setString(2, rating);
			preparedStatement.setString(3, descip);
			
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

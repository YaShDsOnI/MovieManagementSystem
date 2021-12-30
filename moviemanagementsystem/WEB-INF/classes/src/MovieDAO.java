package Model.Movie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Movie.Movie;

public class MovieDAO{
	private String jdbcURL = "jdbc:mysql://localhost:3306/moviems";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";
	
		 
		private static final String SELECT_MOVIES_BY_ID = "select rno,moviename,rating,descip from review where rno =?";
		private static final String SELECT_ALL_MOVIES = "select * from review";
		
		
		public MovieDAO() {}

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            
            e.printStackTrace();
        }
        return connection;
    }
	
	
	public Movie selectMovie(int rno) {
        Movie movie = null;
        try (Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_MOVIES_BY_ID);) {
            preparedStatement.setInt(1, rno);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String moviename = rs.getString("moviename");
                int rating = rs.getInt("rating");
                String descip = rs.getString("descip");
                movie = new Movie(rno, moviename, rating, descip);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return movie;
    }
	
	 public List < Movie > selectAllMovies() {

        
        List < Movie > movie = new ArrayList < > ();

        try (Connection connection = getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_MOVIES);) {
            System.out.println(preparedStatement);
            
            ResultSet rs = preparedStatement.executeQuery();

            
            while (rs.next()) {
                int rno = rs.getInt("rno");
                String moviename = rs.getString("moviename");
                int rating = rs.getInt("rating");
                String descip = rs.getString("descip");
                movie.add(new Movie(rno, moviename, rating, descip));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return movie;
    }
	
	private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
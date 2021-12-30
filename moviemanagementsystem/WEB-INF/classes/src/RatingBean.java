package Model.Rating;

public class RatingBean {
	private String moviename;
	private String rating;
	private String descip;
	
	public String getmoviename() {
		return moviename;
	}
	
	public void setmoviename(String moviename) {
		this.moviename = moviename;
	}
	
	public String getrating() {
		System.out.println("rating= "+rating);
		return rating;
	}
	
	public void setrating(String rating) {
		this.rating = rating;
	}
	
	public String getdescip() {
		return descip;
	}
	
	public void setdescip(String descip) {
		this.descip = descip;
	}
	
}

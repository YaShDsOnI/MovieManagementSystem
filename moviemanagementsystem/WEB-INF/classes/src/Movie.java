package Model.Movie;
 public class Movie {
    protected int rno;
    protected String moviename;
    protected int rating;
    protected String descip;

    public Movie() {}

    public Movie(String moviename, int rating, String descip) {
        super();
        this.moviename = moviename;
        this.rating = rating;
        this.descip = descip;
    }

    public Movie(int rno, String moviename, int rating, String descip) {
        super();
        this.rno = rno;
        this.moviename = moviename;
        this.rating = rating;
        this.descip = descip;
    }

    public int getRno() {
        return rno;
    }
    public void setRno(int rno) {
        this.rno = rno;
    }
    public String getMoviename() {
        return moviename;
    }
    public void setMoviename(String moviename) {
        this.moviename = moviename;
    }
    public int getRating() {
        return rating;
    }
    public void setRating(int rating) {
        this.rating = rating;
    }
    public String getDescip() {
        return descip;
    }
    public void setDescip(String descip) {
        this.descip = descip;
    }
}
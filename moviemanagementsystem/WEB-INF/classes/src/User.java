package Model.User;
 public class User {
    protected int srno;
    protected String name;
    protected String email;
    protected String username;

    public User() {}

    public User(String name, String email, String username) {
        super();
        this.name = name;
        this.email = email;
        this.username = username;
    }

    public User(int srno, String name, String email, String username) {
        super();
        this.srno = srno;
        this.name = name;
        this.email = email;
        this.username = username;
    }

    public int getSrno() {
        return srno;
    }
    public void setId(int srno) {
        this.srno = srno;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
}
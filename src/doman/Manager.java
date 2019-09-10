package doman;

public class Manager {

    private String managername;
    private String password;

    public String getManagername() {
        return managername;
    }

    public void setManagername(String username) {
        this.managername = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Manager{" +
                "username='" + managername + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}

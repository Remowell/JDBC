package Accounts;

public class UserAccount {
    private final String login;
    private final String password;
    private final String email;

    public UserAccount(String login, String password, String email){
        this.login = login;
        this.password = password;
        this.email = email;
    }
    public UserAccount(String login) {
        this.login = login;
        this.password = login;
        this.email = login;
    }

    public String getLogin() {
        return login;
    }

    public String getPass() {
        return password;
    }

    public String getEmail() {
        return email;
    }
}

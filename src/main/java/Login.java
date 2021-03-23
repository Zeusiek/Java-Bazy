import java.sql.*;

public class Login {
    private String login;
    private String password;
    private boolean isLogged = false;
    public Login (String login, String pass){
        setLogin(login);
        setPassword(pass);

    }
    public boolean canLog() {
        Connection connection = DBConnection.createNewDBconnection("jdbc:mysql://localhost:3306/projekt");

        String sel = "SELECT pass FROM accounts WHERE login = ?";
        try{
            PreparedStatement statement = connection.prepareStatement(sel);
            statement.setString(1, this.login);
            try {
                ResultSet results = statement.executeQuery();
                results.next();
                String pass = results.getString("pass");
                if(pass.equals(this.password)){
                    this.isLogged = true;
                    return true;
                }
            } catch (SQLException throwables) {
                System.out.println("Brak konta o tej nazwie lub błędne hasło");
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }


    public void setLogin(String login) {
        this.login = login;
    }
    public void setPassword(String password) {
        this.password = password;
    }


    public boolean isLogged() {
        return isLogged;
    }
}

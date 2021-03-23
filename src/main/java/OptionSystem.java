import PageScrapper_Targonski.Offers.GetOffers;
import PageScrapper_Targonski.Offers.Offer;

import java.sql.*;
import java.time.LocalDate;

public class OptionSystem {
    private static final Connection connection = DBConnection.createNewDBconnection("jdbc:mysql://localhost:3306/projekt");
    public OptionSystem(){};
    public static void option1(){
        String stm = "INSERT INTO oferty (title, prices, rooms, pricesPerMeter,areas, date_added) VALUES (?,?,?,?,?,?)";
        try{
            PreparedStatement statement = connection.prepareStatement(stm);
            Offer[] offers = GetOffers.offers();
            for (Offer d: offers) {
               statement.setString(1, d.getTitle());
               statement.setString(2, d.getPrice());
               statement.setString(3, d.getRoom());
               statement.setString(4, d.getPricePerMeter());
               statement.setString(5, d.getArea());
               statement.setString(6, d.getInsert_date().toString());
               statement.execute();
            }
            System.out.println("Pobrano obiekty do bazy");
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    public static void option2(){
        ResultSet results;
        String stm = "SELECT * FROM oferty";
        try{
            Statement statement = connection.createStatement();
            results = statement.executeQuery(stm);
            results.next();
            while (results.next()){
                System.out.println(
                        "Tytu³: " + results.getString("title") +
                        "\nCena: " + results.getString("prices")+
                        "\nPokoje: " + results.getString("rooms") +
                        "\nCena za metr kwadratowy: " + results.getString("pricesPerMeter")+
                        "\nPowierzchnia: " + results.getString("areas")+
                        "\n###########################");
            }
        }catch (SQLException e){
            e.printStackTrace();
        }


        System.out.println("Pobrano obiekty z bazy");
    }

}

package PageScrapper_Targonski.Offers;

import java.time.LocalDate;
import java.util.Timer;

public class Offer {
    private String title;
    private String price;
    private String room;
    private String pricePerMeter;
    private String area;
    private LocalDate insert_date;
    public Offer(String title, String room , String price, String pricePerMeter, String area){
        setArea(area);
        setPricePerMeter(pricePerMeter);
        setPrice(price);
        setRoom(room);
        setTitle(title);
        setInsert_date(LocalDate.now());
    }

    public void setInsert_date(LocalDate insert_date) {
        this.insert_date = insert_date;
    }
    public LocalDate getInsert_date() {
        return insert_date;
    }
    public void setArea(String area) {
        this.area = area;
    }
    public void setPrice(String price) {
        this.price = price;
    }
    public void setPricePerMeter(String pricePerMeter) {
        this.pricePerMeter = pricePerMeter;
    }
    public void setRoom(String room) {
        this.room = room;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getArea() {
        return area;
    }
    public String getPrice() {
        return price;
    }
    public String getRoom() {
        return room;
    }
    public String getTitle() {
        return title;
    }
    public String getPricePerMeter() {
        return pricePerMeter;
    }
}

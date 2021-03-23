package PageScrapper_Targonski.PageTaker;
/**Copyright Mateusz Targoński*/
public class Page {
    private String url;
    private String type = "Document";

    public Page(String url){
        this.url = url;
    }
    public Page(String url, String type){
        this.url = url;
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public String getUrl() {
        return url;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Page{" +
                "url='" + url + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}

package PageScrapper_Targonski.PageTaker;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
/**Copyright Mateusz Targoński*/
import java.io.IOException;

public class Scrapper extends Page{
    private Document doc = null;

    public Scrapper(String url){
        super(url);
        connect();
    }
    public Scrapper(String url, String type){
        super(url, type);
        connect();
    }
    public Scrapper(Page page){
        super(page.getUrl(), page.getType());
        connect();
    }

    private void connect(){
        try{
            this.doc = Jsoup.connect(this.getUrl()).get();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public Element getAllElements(){
        return this.doc.getAllElements().first();
    }
    public String elementToText(Element element){
        return element.text();
    }
    public String getIdContent(String id){
        return elementToText(getAllElements().getElementById(id));
    }


    public String getElementContent(String cssQuery){
        return gEC(cssQuery, 0);
    }
    public String getElementContent(String cssQuery, int index){
        return gEC(cssQuery, index);
    }
    private String gEC(String c, int index){
        return elementToText(getAllElements().select(c).get(index));
    }
    @Override
    public String toString() {
        return "Scrapper{" +  super.toString()+ '}';
    }
}
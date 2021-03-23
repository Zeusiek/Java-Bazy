package PageScrapper_Targonski.Offers;

import PageScrapper_Targonski.PageTaker.Page;
import PageScrapper_Targonski.PageTaker.Scrapper;


public class GetOffers {
    private static final Scrapper scrapper = new Scrapper(new Page("https://www.otodom.pl/sprzedaz/mieszkanie/torun/"));

    public static Offer[] offers(){
        Offer[] offers = new  Offer[20];
        for(int i = 0; i < 20; i++){
            offers[i] = new Offer(
            scrapper.getElementContent(".offer-item-title", i),
            scrapper.getElementContent(".offer-item-rooms", i),
            scrapper.getElementContent(".offer-item-price", i),
            scrapper.getElementContent(".offer-item-price-per-m", i),
            scrapper.getElementContent(".offer-item-area", i));

        }
        return offers;
    }

}


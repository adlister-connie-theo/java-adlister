package models;

import java.util.ArrayList;

public class BeanTest {
    public static void main(String[] args) {
        Albums album1 = new Albums();
        album1.setName("Album 1");
        album1.setGenre("gospel");
        album1.setArtist("Artist 1");
        album1.setReleaseDate(2000);
        album1.setSales(100);
        album1.setId(1);
        ArrayList<Quote> quotes = new ArrayList<>();
        Author bob = new Author(1, "bob", "smith");
        Author sue = new Author(2, "sue", "Williams");
        Quote quote = new Quote(1, "funny quote", bob);
        quotes.add(quote);
        quote = new Quote(2, "sad quote", sue);
        quotes.add(quote);
        quotes.add(new Quote(3, "smart quote", sue));

        System.out.println(quotes);
        for (Quote quote1 : quotes) {
            System.out.printf("%s %s said '%s'. \n", quote1.getAuthor().getFirstName(), quote1.getAuthor().getLastName(), quote1.getContent());
        }

//        Albums pinkFloyd = new Albums(1, "pink floyd", "wish you were here", 1975-9-12, 14.0f, "psychedelic rock");
//        Author mark = new Author(1, "mark", "twain");
//        Quote quote = new Quote(1,  "its a me mario", mark);
//        Quote quote2 = new Quote(2,  "wait a minute im not mario", mark);
//        Quote quote3 = new Quote(3,  "im mark", mark);
//        System.out.println(pinkFloyd);
//        System.out.println(mark);
//        System.out.println(quote);
//        ArrayList<Quote> quotes = new ArrayList<>();
//        quotes.add(quote);
//        quotes.add(quote2);
//        quotes.add(quote3);
//        for (Quote quoteBean : quotes) {
//            System.out.println(quoteBean);
//        }
    }
}

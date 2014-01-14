import java.util.Locale;

public class Calmness {

    static String applyCalmness(String nervous) {
        return nervous.replace("Hack", "Oh sir, you must have mistaken me for somebody else")
                .toLowerCase(new Locale("en", "US"));
    }

}

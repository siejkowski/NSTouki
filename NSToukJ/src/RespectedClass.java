import java.util.*;

public class RespectedClass {

    public enum DayTime {
        kMorning, kEvening
    }

    public interface BeingRespectful {
        public String greetings(DayTime dayTime, String name);
        public String contactInfo();
    }

    private String badword;
    private String name;

    public RespectedClass() {
        this.badword = "Hack!";
    }

    private String getName() {
        this.setName("Peter");
        return name;
    }

    private void setName(String name) {
        this.name = name;
    }

    public String responseForGreetings(Object greetings) {
        if (greetings instanceof String && ((String) greetings).contains(getName())) {
            return "Very much indeed";
        } else {
            return nervousResponse();
        }
    }

    private String nervousResponse() {
        String breakingBad = badword + " My name is " + getName();

        ArrayList<String> splitted = new ArrayList<String>(Arrays.asList(breakingBad.split(" ")));

        ArrayList<String> array = new ArrayList<String>(splitted);

        HashSet<Integer> set = new HashSet<Integer>(4);
        set.add(1);
        set.add(2);
        set.add(3);
        set.add(4);

        Iterator<Integer> iterator = set.iterator();
        while (iterator.hasNext()) {
            Integer index = iterator.next();
            array.set(index,splitted.get(index).toUpperCase());
        }

        StringBuilder response = new StringBuilder();
        for (String string : array) {
            response.append(string);
            response.append(" ");
        }

        return response.toString();
    }
}

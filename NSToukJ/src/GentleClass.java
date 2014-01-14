public class GentleClass implements RespectedClass.BeingRespectful {

    public String greetings(RespectedClass.DayTime daytime, String name) {
        StringBuilder greetings = new StringBuilder();
        switch (daytime) {
            case kMorning:
                greetings.append("Good morning!");
                break;
            case kEvening:
                greetings.append("Good evening!");
                break;
        }
        greetings.append(" Nice to see you, " + name);
        return greetings.toString();
    }

    @Override
    public String contactInfo() {
        return null;
    }


}

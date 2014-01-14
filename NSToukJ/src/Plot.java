public class Plot {

    public interface Metadata {
        public void run();
    }

    private static class Instance {
        static Plot instance = new Plot();
    }

    private GentleClass gentleClass;
    private RespectedClass respectedClass;

    private static final String c_REMEMBERED_NAME = "Steve";

    private Plot() {}

    static public Plot getPlot(GentleClass gentleClass, RespectedClass respectedClass) {
        Instance.instance.gentleClass = gentleClass;
        Instance.instance.respectedClass = respectedClass;
        return Instance.instance;
    }

    public void nervousConversation(Metadata metadata) {
        if (metadata != null)
            metadata.run();
        System.out.println(this.gentleClass.greetings(RespectedClass.DayTime.kEvening, c_REMEMBERED_NAME));
        System.out.println(this.respectedClass.responseForGreetings(c_REMEMBERED_NAME));
    }

    public void calmConversation(Metadata metadata) {
        if (metadata != null)
            metadata.run();
        System.out.println(this.gentleClass.greetings(RespectedClass.DayTime.kEvening, c_REMEMBERED_NAME));
        System.out.println(Calmness.applyCalmness(this.respectedClass.responseForGreetings(c_REMEMBERED_NAME)));
    }

}

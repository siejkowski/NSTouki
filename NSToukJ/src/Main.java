public class Main {

    public static void main(String[] args) {
        
        GentleClass gentleClass = new GentleClass();
        RespectedClass respectedClass = new RespectedClass();

        Plot plot = Plot.getPlot(gentleClass, respectedClass);

        final String nervous = "The nervous encounter:";

        Plot.Metadata nervousMetadata = new Plot.Metadata() {
            @Override
            public void run() {
                System.out.println(nervous);
            }
        };

        plot.nervousConversation(nervousMetadata);
        plot.calmConversation(new Plot.Metadata() {
            @Override
            public void run() {
                System.out.println("The calm encounter:");
            }
        });
    }
}

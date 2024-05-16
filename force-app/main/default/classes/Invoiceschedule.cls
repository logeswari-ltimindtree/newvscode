public class Invoiceschedule implements Schedulable {
    public void execute(SchedulableContext sc){
        InvoiceBatch ib = new InvoiceBatch();
        database.executebatch(ib);
    }

}
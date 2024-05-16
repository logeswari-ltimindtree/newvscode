public class ScheduleDemo implements Schedulable {
    public void execute(SchedulableContext sc){
        MyBatch mb = new MyBatch();
        Database.executeBatch(mb);
    }

}
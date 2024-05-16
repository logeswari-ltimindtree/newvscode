public class MerchandiseCapsSchedule implements Schedulable{
    public void execute(SchedulableContext sc){
        MerchandiseCapsBatch mc = new MerchandiseCapsBatch();
		database.executeBatch(mc);
    }

}
public class skill {
    public void getMarks(Integer mark){
        try{
            if(mark > 75){
                system.debug('You are passed');
            }
            else{
                throw new milestoneException();
            }
        }catch(milestoneException me){
            system.debug('Better luck next time');
        }
    }
}
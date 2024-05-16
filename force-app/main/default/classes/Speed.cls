public class Speed {
    public void goslow(Integer speedhigh){
        try{
            if(speedhigh > 60){
                throw new SpeedException();
            }
            else{
                System.debug('Speeding');
            }
           }catch(SpeedException se){
         	speedhigh = 0;
               System.debug('speed resetted');
        }
    }
}
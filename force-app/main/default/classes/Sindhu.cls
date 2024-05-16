public class Sindhu {
    public void getvalues(integer a){
        try{
            if(a<0){
                throw new SindhuException();
            }
            else{
                System.debug('exists');
            }
        }catch(SindhuException se){
                   System.debug('Not exists');     
             }
        
    }

}
public class methodoverloading {
    public void add(integer A, integer B){
        integer res = A + B;
        System.debug('Result = '+res);
    }
    
    public void add(integer A, integer B, integer C){
        integer res = A + B + C;
        System.debug('Result = '+res);
    }
}
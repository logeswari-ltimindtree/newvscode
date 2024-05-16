public class MethodOverLoadingDemo {
    public void sum(integer a, integer b){
        integer res =  a+b;
        System.debug('Result is = '+res);
        
    }
    public void sum(integer a, integer b, integer c){
        integer res =  a+b+c;
        System.debug('Result is = '+res);
        
    }
}
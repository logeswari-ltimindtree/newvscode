public class Overloading {
    public void sum(Integer a, Integer b){
        Integer result = a+b;
        System.debug('The addition of two no is '+result);
    }
    public void sum(Integer a, Integer b, Integer c){
        Integer result = a+b;
        System.debug('The addition of three no is '+result);
    }
}
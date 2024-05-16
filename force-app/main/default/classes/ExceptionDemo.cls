public class ExceptionDemo {
    public void getDivide(integer a, integer b){
        try{
            integer res = a/b;
            System.debug(res);
            demo d = new Demo();
            System.debug('Value of d='+d);
            d.sayHello();
            //null sayHello
            List<String> name =  new List<String>();
            name.add('amit');
            System.debug(name.get(1));
        }catch(MathException me){
            System.debug('Please dont give zero');
        }catch(NullPointerException ne){
            System.debug('Please donot call a method with null');
        }Catch(Exception e){
            System.debug('Server is busy... please wait');
        }
        finally{
            System.debug('I will get executed in either of the case if exception is there are not');
        }
    }
}
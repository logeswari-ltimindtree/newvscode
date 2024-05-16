public class FutureA {
	@future
    public static void a1(){
        system.debug('I am from class A');
        system.enqueueJob(new B());
    }
}
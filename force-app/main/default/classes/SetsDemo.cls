public class SetsDemo {
    public static void setequalsandcontain(){
        Set<Integer> set1 = new Set<Integer>{1,3,4,5};
        Set<Integer> set2 = new Set<Integer>{1,3,5};
        
        // using equals
        System.debug('Are set1 and set2 equal'+set1.equals(set2));
        
        // using contains
        System.debug('set1 contain set2'+set1.contains(4));
    }
}
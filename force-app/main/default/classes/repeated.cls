public class repeated {
    public void getuniqueElements(){
        List<Integer> list1 = new List<Integer>();
        list1.add(1);
        list1.add(2);
        list1.add(4);
        list1.add(2);
        list1.add(2);
        system.debug(list1);
        set<Integer> set1 = new set<Integer>(list1);
        /*for(Integer s:set1){
            System.debug(s);
        }*/
        System.debug(set1);
        
    }
}
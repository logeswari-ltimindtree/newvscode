public class NewremoveElement {
    public void getValue(){
        List<Integer> list1 = new List<Integer>();
        list1.add(10);
        list1.add(12);
        list1.add(1);
        list1.add(12);
        list1.add(13);
        System.debug(list1);
        Set<Integer> Setlist = new set<Integer>(list1);
        for(Integer s:Setlist){
            System.debug(s);
        }
    }
}
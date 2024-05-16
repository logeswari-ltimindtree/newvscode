public class Duplicate {
    public void add(){
    List<Integer> mylist = new List<Integer>{1,2,3,4,5,2};
    Set<Integer> setList = new Set<Integer>(myList);
        setList.addAll(myList);
    System.debug(setList);
    }    
    
}
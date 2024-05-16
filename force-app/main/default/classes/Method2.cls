public class Method2 {
    public void getNum(){
        list<Integer> n =new list<Integer>{1,2,3,4,1,5};
        Set<Integer> s=new set<Integer>();
        //s.addAll(n);
        for(integer i:n){
            s.add(i);
        }
        for(integer j : s){
            system.debug(j);
        }
}
}
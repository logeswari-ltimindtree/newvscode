public class CollectionDemo {
    public void getNames(){
        Set<String> name = new Set<String>();
        
        name.add('amit');
        name.add('raj');
        name.add('prem');
        name.add('sandy');
        
        System.debug('Name are '+name);
        
        // 3rd way to get 
        for(String nm: name){
            System.debug(nm);
    }
}
    
}
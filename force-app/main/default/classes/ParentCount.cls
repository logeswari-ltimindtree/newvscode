public class ParentCount {
    public static void noofcount(list<child__c> nList,list<child__c> oList){
        list <id> iparent =new list<id>();
        parent__c par =new parent__c();
        list<parent__c> pList=new list<parent__c>();
        id i;
        if(nList!=null){
        for(child__c cL: nList){
            i=cL.parent__c;
            iparent.add(i);
           
        }
        }
        if(oList!=null){
        for(child__c cL: oList){
            i=cL.parent__c;
                iparent.add(i);
           
        }
        }
        pList=[select id,Record__c ,(select id from Childs__r) from parent__c where id=:iparent];
        if(!pList.isEmpty()){
            for(parent__c pa:pList ){
                pa.Record__c=pa.Childs__r.size();
            }
        }
        update pList;
    }
}
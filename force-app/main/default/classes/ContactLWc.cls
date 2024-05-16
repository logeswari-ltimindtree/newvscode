public with sharing class ContactLWc {
    @AuraEnabled(cacheable=true) // 
    public static list<contact> getcontact(){
        return[select Id,FirstName, LastName, Email from contact ];
    }
}


// AuraEnabled make visible to ligthing
// cacheable-true wiil cache records locally so that only when update happens a round trip to fetch a 


/*Execution
system.debug(ContactLWc.getaccount());
*/
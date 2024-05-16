@RestResource(urlMapping='/values/*')
global class InvoivePost {
    @httpPost
    global static id insertInvoice(string n){
        Invoice__c inv= new Invoice__c();
        inv.Description__c = n;
        insert inv;
        return inv.id;
    }
}
@RestResource(urlMapping='/invoiceurl/*')
global class invoicehttp {
    @httpGet
    global static list<Invoice__c> getAllInvoice(){ // method should also be static
        List<Invoice__c> inv = [select id, name from Invoice__c];
        return inv;
    }
}
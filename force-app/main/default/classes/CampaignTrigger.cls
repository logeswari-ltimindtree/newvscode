public class CampaignTrigger {
    public static void backupcampaign(List<Campaign> cm){
        Campaign_Archieve__c ca = new Campaign_Archieve__c();
        List<Campaign_Archieve__c> cList = new List<Campaign_Archieve__c>();
        for(Campaign c:cm){
            ca.Name = c.Name;
            ca.Type_arch__c = c.Type;
            cList.add(ca);
        }
        insert cList;
    }
}
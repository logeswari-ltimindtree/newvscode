public with sharing class GetaccountDetail {
    
    @Auraenabled
    public static string getaccountname(String AccountNumber){
        return[select Name from account where AccountNumber = :AccountNumber].Name;
    }
}
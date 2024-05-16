public with sharing class Getcontactdetail {
    @Auraenabled
    public static string getname(String email){
        return[select LastName from contact where Email = :email].LastName;
    }
}
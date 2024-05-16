public class MyLicense {
    public void getAge(Integer a){
        try{
            if(a<18){
                throw new LicenseException();
            }
            else{
                system.debug('You are eligible to get license');
            }
        }catch(LicenseException le){
            system.debug('yor are less than 18 so not eligible to get');
        }
    }
}
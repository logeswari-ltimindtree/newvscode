public class MapIteration {
    public static void iterateoverkeys(){
        Map<String, Integer> Employeeage = new Map<String, Integer>();
        Employeeage.put('John',30);
        Employeeage.put('Priya', 45);
        Employeeage.put('Anitha', 24);

        // usingkeyset to iterate over keys and access the value
        for(String key : Employeeage.keyset()){
            Integer value = Employeeage.get(key);
            System.debug(key+'->'+value);
        }
        
        for(Integer value : Employeeage.values()){
            System.debug(value);
        }
    }
}
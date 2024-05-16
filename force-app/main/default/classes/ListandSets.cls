public class ListandSets {
    public static void compare(){
        List<String> Mylist = new List<String>{'Logi','Abi','Priya'};
        
        // using equal method
            List<String> compareList = new List<String>{'Abi', 'Priya','Logi'};
         	System.debug('Are list equals?' +MyList.equals(CompareList));
        // using contain method
        	System.debug('Does the list contain "Charlie"?' +MyList.contains('Charlie'));
    }
}
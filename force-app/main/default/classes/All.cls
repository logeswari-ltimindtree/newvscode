public class All {

    Addition a = new Addition();
    Subtraction b = new Subtraction();
    Multiplication m = new Multiplication();
    Division d = new Division();
    
    public void doall(){
        a.dosum();
        b.dosub();
        m.domul();
        d.dodiv();
    }
}
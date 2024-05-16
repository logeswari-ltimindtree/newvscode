public class OpportunityStage {
    public static void getstage(list<Opportunity> newl, list<Opportunity> old){
        integer i = 0;
        for(Opportunity o:old){          
        Opportunity newOpp = newl.get(i);
          Opportunity oldOpp = o;
        
            if(oldOpp.StageName=='Closed Won' && newOpp.StageName=='Closed Lost'){
                newOpp.NextStep ='escalate to manager';
            }
			i++;
            }
        }
    }
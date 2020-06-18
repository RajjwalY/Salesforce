public class CandidateExtension {
    public Candidate__C cnd{get;set;}
    public CandidateExtension(ApexPages.StandardController controller) {
    
    cnd = (Candidate__c) controller.getrecord();

    }
    public void customsave(){
     integer rec = [select count() from Candidate__C where name = :cnd.name];
     if(rec == 0)
     {
         insert cnd;
         apexpages.addmessage(new apexpages.message(apexpages.severity.confirm,'insertion succesful'));
     } 
     else
     {
     apexpages.addmessage(new apexpages.message(apexpages.severity.error,'record already exist'));
     
     }
    }

}
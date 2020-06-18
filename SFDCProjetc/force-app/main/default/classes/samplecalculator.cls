public class samplecalculator {

    public integer i{get;set;}
    public integer j{get;set;}
    public integer r{get;set;}
    
    public void add(){
        r=i+j;
        ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.Confirm,'Operation succesful'));
    }
    
    public void sub(){
        r=i-j;
        ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.Confirm,'Operation succesful'));
    }
    public void mul(){
        r=i*j;
        ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.Confirm,'Operation succesful'));
    }
    public void div(){
    if(j<>0)
    {
        r=i/j;
        ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.Confirm,'Operation succesful'));
    }
    else
    {
        ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.Error,'Division cannot be performed'));
    }
    }
}
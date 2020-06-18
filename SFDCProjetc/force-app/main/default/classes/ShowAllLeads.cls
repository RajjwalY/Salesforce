public class ShowAllLeads {
public List<Lead> lstld{get;set;}
    public ShowAllLeads()
    {
     lstld =[select id,name,email,company,status,phone from lead where isConverted= false] ;
    
    }

}
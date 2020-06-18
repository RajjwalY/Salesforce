public class CustomeWrapper {
    public id recid{get;set;}
    public string firstname{get;set;}
    public string lastname{get;set;}
    public string email{get;set;}
    public string phone{get;set;}
    
    public CustomeWrapper (Lead ldrec){
        recid = ldrec.id;
        firstname =ldrec.FirstName;
        lastname=ldrec.LastName;
        email=ldrec.Email;
        phone=ldrec.Phone;
        
    }
    public CustomeWrapper(Contact con){
        
        recid = con.id;
        firstname =con.FirstName;
        lastname=con.LastName;
        email=con.Email;
        phone=con.Phone;
    }
}
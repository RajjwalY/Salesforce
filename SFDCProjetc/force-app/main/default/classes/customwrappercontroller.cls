public class customwrappercontroller {

    public list<CustomeWrapper> clr {get;set;}
    public void Loaddata(){
     
    list<customewrapper> clr = new list<customewrapper>();
    
    List<contact> lstcon = [select id,firstname,lastname,email,phone from contact limit 10];
    
    List<lead> lstld = [select id,firstname,lastname,email,phone from lead limit 10];
    
    if(! lstcon.isEmpty())
    {
     for(contact con: lstcon)
     {
         clr.add(new CustomeWrapper(con));
         system.debug(clr);
     
     }
      if(! lstld.isEmpty())
    {
     for(lead ldrec: lstld)
     {
         clr.add( new CustomeWrapper(ldrec));
        system.debug(clr);
     }
    
    }
    
    }


}}
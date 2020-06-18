trigger myAccdata on Account (after insert) {
    
    if(trigger.isInsert && trigger.isAfter)
    {
        List<Contact> conlist = new list<Contact>();
        list<Opportunity> opplist = new list<Opportunity>();
        for(Account acc: trigger.new){
            contact con = new contact();
            con.AccountId = acc.Id;
            con.Phone = acc.Phone;
            
        }     
        
    }

}
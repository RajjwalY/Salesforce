trigger Oppty_cust_sharing on Opportunity (after insert,after update) {
    
    if(trigger.isInsert && trigger.isAfter)
    {
        list<opportunityshare> ops = new list<opportunityshare>();
        for(opportunity op :trigger.new)
        {
            opportunityshare os = new opportunityshare();
            os.Opportunityid=op.id;
            os.userorgroupid = op.agent__c;
            os.OpportunityAccesslevel='read';
            os.rowcause='manual';
            ops.add(os);
            }   
        insert ops;
        }
    
    else if(trigger.isUpdate && trigger.isAfter)
    {
        list<opportunityshare> ops = new list<opportunityshare>();
    map<id,opportunity> oldmap = new map<id,opportunity>();
    map<id,opportunity> newmap = new map<id,opportunity>();
    set<id> ids=oldmap.keyset();
    for(id i : ids)
    {
        opportunity oldv =oldmap.get(i);
        opportunity newv = newmap.get(i);
        if(oldv.stagename !='Closed won' && newv.stagename=='Closed won')
        {
          
            opportunityshare os = new opportunityshare();
            os.Opportunityid=newv.id;
            os.userorgroupid = newv.agent__c;
            os.OpportunityAccesslevel='read';
            os.rowcause='manual';
            ops.add(os);
            
        insert ops;  
        }
        
        
    
    }}
    

}
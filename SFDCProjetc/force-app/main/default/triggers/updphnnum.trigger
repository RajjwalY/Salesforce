trigger updphnnum on Account (after update) {
    
    list<account> accl = new list<account>();
    list<contact> conl = new list<contact>();
    map<id,account> oldmap = trigger.oldmap;
    map<id,account> newmap = trigger.newmap;
    set<id> ids=trigger.oldmap.keyset();
    for(id k:ids)
    {
        account old = oldmap.get(k);
        account newacc = newmap.get(k);
    	if(old.phone!=newacc.phone)
       {
           list<contact> q = [select id,name,phone from contact where AccountId IN:oldmap.keyset()];
           for(contact c:q)
           {
               c.phone=newacc.phone;
               conl.add(c);
           }
          
       }
           
       }
    update conl;
    //database.SaveResult[] res = database.update(new Sobject[] {newacc,c});
}
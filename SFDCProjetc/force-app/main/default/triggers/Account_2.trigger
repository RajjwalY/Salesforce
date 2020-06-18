trigger Account_2 on Account (after insert,after update) {
    
    list<account> acc =  new list<account>();
    list<opportunity> ops = new list<opportunity>();
    for(account a :trigger.new)
    {
        if(a.rating=='Hot')
        {
            opportunity op = new opportunity();
            date dt=system.today();
            op.name='child opportunity';
            op.stagename='Needs Analysis';
            op.closedate = dt.adddays(15);
            op.AccountId =a.Id;
            ops.add(op);
        }
        insert ops;
    }

}
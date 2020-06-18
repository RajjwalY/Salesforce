trigger Account_One on Account (before insert) {
    //fetch all recors
    for(Account a: trigger.new)
    {
        if(a.Industry =='Banking')
        {a.rating='Hot';
        a.ownership='public';
        a.description='insert via trigger as banking';
         a.type='other';}
    }

}
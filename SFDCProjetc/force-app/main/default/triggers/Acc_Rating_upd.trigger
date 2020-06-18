trigger Acc_Rating_upd on Account (before insert) {
    mydata__C myd = mydata__c.getinstance(userinfo.getuserid());
    if(myd.Active__c =true)
    {
        for(account a:Trigger.new)
        {
            a.rating='cold';
            a.ownership = 'Private';
        }
    }

}
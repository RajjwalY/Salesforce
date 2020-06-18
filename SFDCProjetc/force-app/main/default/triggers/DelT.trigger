trigger DelT on Account (before delete) {
    list<opportunity> q = [select name,stagename from opportunity where Accountid IN: trigger.oldmap.keyset() AND stagename='Closed Won'];
    for(account a :trigger.old)
    {if(q.size()>0)
    
    a.adderror('cant delete');
    }
    

}
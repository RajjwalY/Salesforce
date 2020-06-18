trigger BreakAccCon on Account (before delete)
{
    if(Trigger.isDelete && Trigger.isBefore)
    {
        List<Contact> ConList = [select id,name,accountid from contact where accountid IN: trigger.oldMap.keyset()];
        if( ! ConList.isEmpty())
        {
            for(Contact con : ConList){
                con.accountid = null;
                
            }
            update ConList;
        }
    }
}
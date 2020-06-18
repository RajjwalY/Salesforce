public class commonhelper {
	public static void getaccount()
    {
        List <account> lstacc = [select id,name ,phone from account];
        for(account acc: lstacc)
        {
            system.debug(acc);
        }
    }
    public static void getposition()
    {
        //get records in map
        Map<Id,Position__C>  posmap = new Map<id, Position__C>([select id,name,location__c from position__c]);
        
        if(! posmap.isEmpty()){
            for(position__c post : posmap.values()){
                
                system.debug(post);
                
            }
        }
    }
    public static void getcons(string accname){
        Account acc = [select id from Account where Name=: accname];
        id accid = acc.id;
        List<Contact> conlist = [select id,name,phone from contact where accountid = :accid];
        if(! conlist.isEmpty())
        {
            for (contact con :conlist)
            {
                system.debug(con);
            }
        }
    }
    public static void dynamiccon(string search){
        if(search !=null){
            string conquery = 'select id,firstname,lastame,phone,fax from contact';
            if(pattern.matches('^[a-zA-Z0-9._|\\\\%#~`=?&/$^*!}{+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}$',search)){
                system.debug('email query');
                    conquery +='where email =:search';
                
            }
            else{
                system.debug('normal string');
                search +='%';
                conquery +='where lastname = :search';
            }
            List<contact> con = Database.query(conquery);
            for(contact cons : con){
                system.debug(cons);
            }
        }
    }
    public static void getcount (){
        aggregateresult[] aggr = [select industry,sum(AnnualRevenue) rc from account group by industry];
        for(aggregateresult agg : aggr){
            system.debug('idustry:'+ agg.get('Industry') +'annual revenue:' + agg.get('rc'));
                         //system.debug(agg.get('rc'));
        }
    }
}
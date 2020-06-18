public class ParentChildInsert {
    public void inspc (){
        Account acc = new Account(name='Parent acc');
        contact con = new contact();
        con.AccountId = acc.Id;
        con.LastName ='child con';
        con.Phone = acc.Phone;
        insert con;
    	insert acc;
        opportunity opp = new opportunity();
        date dt = date.today();
        dt=dt.addDays(14);
        opp.name ='child opp';
        opp.closedate = dt;
        opp.stagename = 'Prospecting';
        opp.AccountId = acc.id;
        insert opp;
       
    }
    

}
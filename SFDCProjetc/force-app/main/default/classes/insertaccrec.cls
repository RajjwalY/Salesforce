public class insertaccrec {
    public static void insertaccrec(){
        List<account> lstacc = new List<account>();
        account acc= new account();
        for(integer i=1 ; i<10 ;i++)
        { acc.name = 'test account' +i;
          acc.rating = 'Hot';
          lstacc.add(acc);
        insert lstacc;}
    }
}
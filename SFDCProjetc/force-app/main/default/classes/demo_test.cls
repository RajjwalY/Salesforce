@isTest
public class demo_test {
 	@isTest
    public static  void callmetest(){
        Demo d = new Demo();
        d.callme('test class account','Hot','789562312');
        integer count=[select count() from account where name='test class account' and phone='789562312'];
        system.assertEquals(1,count);
        
        
    }
}
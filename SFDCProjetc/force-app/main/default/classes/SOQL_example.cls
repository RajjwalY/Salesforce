public class SOQL_example {
    
    List<Account> acc = new list<account>([select name,rating,type,ownership from account]);

}
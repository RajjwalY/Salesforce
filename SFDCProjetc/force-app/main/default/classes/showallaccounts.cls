public class showallaccounts {

    public list<account> lstacc{get;set;}
    
    public void getallacc(){
    

     lstacc=[select id,name,rating,industry,type from account];
    }
}
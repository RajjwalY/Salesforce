public class AccountSearch {
//comments
//comments2
public string searchtext{get;set;}
public list<account> lstacc{get;set;}
public void AccountSearch(){
    if(searchtext !=null && searchtext !='')
    {
    searchtext +='%';
    lstacc=[select name,id,phone,rating,annualrevenue,type from account where name like :searchtext];
    
    }

}
}
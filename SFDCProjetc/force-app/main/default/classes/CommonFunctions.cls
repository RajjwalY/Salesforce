@isTest
public class CommonFunctions {
    
    public static void add(integer x,integer y){
        system.debug('addition is:'+ (x+y));
        }
    public void sub(integer x, integer y){
        system.debug('subtraction:'+ (x-y));
        }
    public void div(integer x, integer y){
        if(y!= 0){
            system.debug('division:'+ (x/y));
            }
        else
            {
            system.debug('diviion not posiible');
            }
        }
    public void concat(string s1,string s2){
        system.debug('concatenated:'+ s1+s2);
    }
    public void equal(string s1 , string s2){
        if(s1 == s2){
            system.debug('equal');          
            
        }
        else{
            system.debug('not equal');
        }
    }
        public void equals(string s1,string s2)
        {
            if(s1.equals(s2))
            {
                system.debug('equal');          
            
        }
        else{
            system.debug('not equal');
        }
            
        }
        public void len(string s1){
            system.debug('length:'+ s1.length());
        }
    }
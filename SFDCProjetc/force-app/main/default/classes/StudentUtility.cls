public class StudentUtility {
		Public integer studId;
    	Public string studName,addr;
    	Public boolean isActive;
    	Public decimal fee;
    //Procedure ..
    Public void AssignValues(){
        studId=1001;
        studName='steve';
        addr ='delhi';
        isActive=true;
        fee=20000;
    }
    
    Public void showStudDetails(){
        system.debug(studId);
        system.debug(studName);
        system.debug(addr);
        system.debug(fee);
        system.debug(isActive);
    }
    
}
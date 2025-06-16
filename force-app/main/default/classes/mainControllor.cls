public with sharing class mainControllor {
    
     public static void getAccount()
     {
            
         List<Account>  acclist = new List<Account>();

             acclist = [select id,name from Account];

          system.debug(acclist);
     }
}
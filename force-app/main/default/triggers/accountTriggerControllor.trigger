trigger accountTriggerControllor on Account (after insert,before insert) {

    if(trigger.isAfter)
    {
         list<contact> conslit = new List<contact>();
         List<Opportunity> opplist = new List<Opportunity>();
        for(Account acc : trigger.new)
        {
           Contact connw = new contact(AccountId = acc.id,LastName= acc.name+ ' contact',Email='testing@gmail.com');
           conslit.add(connw);
        }

        insert conslit;
    }

    if(trigger.isBefore)
    {
          for(account acc: trigger.new)
          {
             acc.AccountSource = 'Public Relations';
             acc.Active__c = 'ture';
             acc.Rating = 'hot';
             acc.Industry = 'Banking';
             acc.Account_Open_Date__c = system.today();
          }
    }

}
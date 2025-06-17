global class batchapexTest implements Database.Batchable<sObject> {

    global Database.QueryLocator start(Database.BatchableContext bc)
    {
          string query = 'select id,name from account';
          return Database.getQueryLocator(query);
    }
     global void execute(Database.BatchableContext bc, List<account> scope)
     {
        for(Account acc: scope)
        {
             acc.name = acc.name + ' batch class add';
        }
        update scope;
     }
     global void finish (Database.BatchableContext bc)
     {
          System.debug('batch completed');
     }
}
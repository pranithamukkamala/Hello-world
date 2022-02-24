global class BatchExample1 implements Database.Batchable<sObject> {
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        String q = 'select Id,Name from Account';
        return Database.getQueryLocator(q);
    }
    global void execute(Database.BatchableContext bc, List<Account> aclist){
        for (Account ac: aclist)
        {
            ac.Name = ac.Name+ 'Append by Batch job';
        }
        try
        {
            update aclist;
        }
        catch(Exception r)
        {
            System.debug(r.getMessage());
        }
    }
    global void finish(Database.BatchableContext bc){
        System.debug('Batch Execute finished');
    }

}
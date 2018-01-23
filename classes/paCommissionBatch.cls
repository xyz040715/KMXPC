global class paCommissionBatch implements Database.Batchable<sObject>, Database.AllowsCallouts {
 	global final String Query;
   global final String Entity;
   global final String Field;
   global final String Value;
	global	final PAonboardingSalesforceCom.GetCommisionsPort svc = new PAonboardingSalesforceCom.GetCommisionsPort();
    
	global integer total;
    
   global paCommissionBatch(String url, String q){
		svc.endpoint_x = url;
      Query=q;
   }

   global Database.QueryLocator start(Database.BatchableContext BC){
      return Database.getQueryLocator(query);
   }

   global void execute(Database.BatchableContext BC, List<sObject> scope){
     for(sobject s : scope){
         Opportunity o = (Opportunity)s;
		 Double result = svc.getCommissions(	o.Id, o.AccountId);
         o.commission__c = result;
         System.debug(o.Name + '  , ' + string.valueof(o.AccountId) + '   ,  ' + string.valueof (result));
     }
     update scope;
    }

   global void finish(Database.BatchableContext BC){
   }
}
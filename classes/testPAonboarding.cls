//@istest
public class testPAonboarding {
//@istest
    static public void testGetCommission() {
        //Test.startTest();
        Account a = new Account(name='testAccount');
        Opportunity o = new Opportunity(name='testOpportunity', amount=1000000, stagename='Prospecting', closedate=system.today());
        insert a;
        o.AccountId = a.Id;
        insert o;
        PAonboardingSalesforceCom.GetCommisionsPort svc = new PAonboardingSalesforceCom.GetCommisionsPort();
        Double result = svc.getCommissions(o.Id, a.AccountNumber);
        //Test.stopTest();
        
        System.debug( result );
    }
}
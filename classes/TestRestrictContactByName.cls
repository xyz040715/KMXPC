/**
 * YH test 3/29/2017
 **/
@isTest
private class TestRestrictContactByName  {

    @isTest static void TestRestrictContactByName () {
        // Test data setup
        // Create an account with an opportunity, and then try to delete it
        Contact cont = new Contact(LastName='INVALIDNAME');
        
        // Perform test
        Test.startTest();
        Database.SaveResult result = Database.insert(cont);
        Test.stopTest();

        // Verify 
        // In this case the deletion should have been stopped by the trigger,
        // so verify that we got back an error.
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Cannot delete account with related opportunities.',
                             result.getErrors()[0].getMessage());
    }
    
}
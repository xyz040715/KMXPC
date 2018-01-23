/**
 * YH test 3/29/2017
 **/
@isTest
public class TestVerifyDate {
    @isTest static void TestVerifyDate() {
        //create test data
        Date date1 = System.today();
        Date date2;
        
       
        Test.startTest();

        //date2 < date1
        date2 = date1.addDays(-1);
        VerifyDate.CheckDates(date1, date2);
        //    date1=< date2 < date1+30
        date2 = date1.addDays(1);
        VerifyDate.CheckDates(date1, date2);
        //date2 >= date1+30
        date2 = date1.addDays(30);
        VerifyDate.CheckDates(date1, date2);
        Test.stopTest();
    }
}
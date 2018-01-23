@isTest 
private class TestApex {
    static testMethod void validateFunctions() {
        //String aid='0016100000Khs9z';  //Tencent China
        List<Account> oo = [Select o.Name, o.Id, 
                      (SELECT Id, Title, TextPreview FROM AttachedContentNotes)  
                      From Account o ]; 
        System.debug('Price before inserting new book: ' + oo);

        //List<AttachedContentNote> n=oo.AttachedContentNote;
        //AttachedContentNote note = n[0];
        //System.debug('Price before inserting new book: ' + note.Title);
    }
}
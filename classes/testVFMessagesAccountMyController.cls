public class testVFMessagesAccountMyController {
    Account account;
    String lang;
    public boolean isSaveLangForUser;
    public boolean getisSaveLangForUser() {
        return isSaveLangForUser;
    }
    public void setisSaveLangForUser(boolean input) {
         isSaveLangForUser=input;
         ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING, 'set lang: ' + string.valueof(input) + '; lang=' + lang));

    }
    public List<SelectOption> getLangs() {
        List<SelectOption> langs = new List<SelectOption>();
        langs.add(new SelectOption('zh_HK', '中文繁体'));
        langs.add(new SelectOption('zh_CN', '中文简体'));
        langs.add(new SelectOption('en_US', 'english'));
        langs.add(new SelectOption('fr', 'french'));
        langs.add(new SelectOption('ja', 'japanese'));
        langs.add(new SelectOption('ko', 'Korean'));
        langs.add(new SelectOption('vi', 'Vietnam'));
        langs.add(new SelectOption('ru', 'Русский'));
        return langs;
    }
    public string getLang() {
    return lang;
    }
    public void setLang(String lang) {
        this.lang=lang;
    }
    public PageReference save() {
    try{
        update account;
        User u = [select LanguageLocaleKey from User where Firstname = 'Yunzhen' limit 1];
        u.LanguageLocaleKey = lang; 
        if (this.isSaveLangForUser) 
            update u;
//        return new PageReference();
    }
    catch(DmlException ex){
        ApexPages.addMessages(ex);
    }
    return null;
    }
    public String getName() {
        return 'MyController';
}
    public Account getAccount() {
    try {
        if(account == null)
            account = [select id, name, industry, region__c, description, website, numberofemployees, numberoflocations__c from Account
                where id = :ApexPages.currentPage().getParameters().get('id')];
    } catch (exception e) {
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING, e.getMessage()));
    }
                return account;
    }
}
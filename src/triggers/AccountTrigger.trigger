trigger AccountTrigger on Account (before insert) {

for(Account acc : trigger.new){
    if(acc.Formula_Name__c!=null){
        acc.Name=acc.Formula_Name__c+'++';
    }
    
}

}
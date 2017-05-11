public class SobjectUtility {

    
    public sObject sObjectNew;

    public sObject sObjectOld;
    /**
     * Constructor
     * @return NA
     */
    public SobjectUtility(sObject sObjectNew, sObject sObjectOld) {
        this.sObjectNew = sObjectNew;
        this.sObjectOld = sObjectOld;
    }
    public SobjectUtility() {}

    /**
     * Check if the field value has changed in trigger
     * @param  sObjectNew [new value of sObject(Trigger.new value)]
     * @param  sObjectOld [old value of sObject(Trigger.old value)]
     * @param  fieldName  [Name of the field to compare]
     * @return Boolean    [true if changed, false if unchanged ]
     */
    public static Boolean isFieldChanged(sObject sObjectNew, sObject sObjectOld, String fieldName){
        Boolean isFieldChanged = false;

        // check if the sObject has the mentioned field
        if(!hasSObjectField(sObjectNew,fieldName)){
            throw new sObjectUtilException('Field "'+ fieldName+'" does not exist on '+sObjectNew.getSObjectType());
        }

        //check value of field
        if(sObjectNew.get(fieldName)!=sObjectOld.get(fieldName)){
            isFieldChanged = true;
        }

        return isFieldChanged;

    }
    /**
     * Returns true if given field value is changed
     * @param  fieldName [Name of the field to check]
     * @return Boolean   [true if changed, false if unchanged]
     */
    public Boolean isFieldChanged(String fieldName){
        Boolean isFieldChanged = isFieldChanged(this.sObjectNew,this.sObjectOld,fieldName);
        return isFieldChanged;
    }

    /**
     * Get record type Id of sObject by name
     * @param  sObjectType    "sObject".sObjectType
     * @param  recordTypeName name of the record type
     * @return Id of the record type
     */
    public static String getObjectRecordTypeId(SObjectType sObjectType, String recordTypeName)
    {
        //Generate a map of tokens for all the Record Types for the desired object
        Map<String,Schema.RecordTypeInfo> recordTypeInfo = sObjectType.getDescribe().getRecordTypeInfosByName();

        if(!recordTypeInfo.containsKey(recordTypeName))
            throw new sObjectUtilException('Record type "'+ recordTypeName +'" does not exist.');

        //Retrieve the record type id by name
        return recordTypeInfo.get(recordTypeName).getRecordTypeId();
    }

    public static boolean hasSObjectField(SObject so,String fieldName){
    	//use only lowercase for comparisions
	    fieldName = fieldName.toLowerCase();
	    return so.getSobjectType().getDescribe().fields.getMap().keySet().contains(fieldName);

    }

    public class sObjectUtilException extends Exception{}

}
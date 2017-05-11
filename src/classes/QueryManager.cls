public class QueryManager{
public List<String> fieldList;

public QueryManager(){

}
    public void initQueryFields(Set<String> fieldSet){
    
        fieldList.addAll(fieldSet);
    }
}
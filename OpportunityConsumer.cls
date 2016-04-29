public class OpportunityConsumer{
private static String HTTP_GET='GET';
private static String EMPTY_STRING = '';
private static Integer STATUS_OK=200;
private static String ID ='id';
private static String UP_AT ='updated_at';
private static String prevToken='';
private static String SAPLE_JSON ='[ {  "amount": 7080362754,'+
   ' "created_at": "2016-04-06 18:24:12.718289",'+
   ' "description": "Molestias quia et. Dignissimos error tempore quo ratione. Qui officiis consequuntur.",'+
   ' "expectedrevenue": 7590412790,'+
   ' "forecastcategoryname": "Best Case",'+
    '"leadsource": "Purchased List",'+
   ' "name": "Abbott-Rolfson",'+
    '"nextstep": "Reactive multi-tasking encryption",'+
    '"probabliity": 75,'+
    '"quote": 65041,'+
    '"stagename": "Value Proposition",'+
    '"type": "New Customer",'+
   ' "updated_at": "2016-04-06 18:24:12.71829"  }]';

public static void loadOpportunities(String endpointUrl,String requestData) {

try{
       HttpRequest req = new HttpRequest();
       Http http = new Http();
       req.setMethod(HTTP_GET);
       String url = endpointUrl+requestData;
       req.setEndpoint(url);
       String jsonVal =EMPTY_STRING ;
       if(Test.IsRunningTest()){
        jsonVal=SAPLE_JSON;
        }else{
       HTTPResponse resp = http.send(req);
       if(resp.getStatusCode()==STATUS_OK)
       jsonVal =resp.getBody();
       }
       //System.debug('jsonVal :: '+jsonVal );
        if(jsonVal!=null && !(EMPTY_STRING ).equals(jsonVal)){
        
        
       List<Opportunity> opportList=  (List<Opportunity>)System.JSON.deserialize(jsonVal , List<Opportunity>.class);
        /*
         List<Opportunity> opportList=  new List<Opportunity>(); 
        JSONParser parser =  JSON.createParser(jsonVal);
        while (parser.nextToken() != null) {
             if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText().equals(ID) )) {
                       parser.clearCurrentToken();
                }
               if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText().equals(UP_AT) )) {
               prevToken=UP_AT;
               }
                  Opportunity opportunit  = (Opportunity)parser.readValueAs(Opportunity.class);
                  opportList.add(opportunit  );
                              
         }
        */
        if(opportList!=null && !opportList.isEmpty()){
            System.debug('Size :: '+opportList);
                DataBase.Insert(opportList);
                
       }
       }
       }catch(Exception e){
           System.debug('Exception :: '+e);
           
       }
    }

}
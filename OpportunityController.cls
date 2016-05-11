public class OpportunityController {

private String REQ_DATA ='';
private Integer QRY_LIMIT=9999;
public List<Opportunity> listOpprt{set; get;}
public OpportunityController(){
    
       listOpprt = new List<Opportunity>();
     
}

public PageReference getOpportunities(){
        PageReference pg = null;
         listOpprt = new List<Opportunity>();
      OpportunityConsumer.loadOpportunities(Label.END_POINT_URL+Label.END_SERVICE,REQ_DATA); 
        listOpprt = [Select Account.Name,Name,Quote__c from Opportunity Limit :QRY_LIMIT];
        
        return pg;

}

}
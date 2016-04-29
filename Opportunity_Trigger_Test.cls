@isTest
public class Opportunity_Trigger_Test {
 public testMethod static void Test1(){
 
 Opportunity opp= new Opportunity();
 opp.Name='Test Opportunity';
 opp.CloseDate  = System.now().date();
 opp.StageName= 'Prospecting';
 opp.Amount=123456;
 test.StartTest();
 try{
 insert opp;
 }Catch(Exception e){
     System.debug(e);
 }

 try{
 opp.Amount=12345678;
 update opp;
 }Catch(Exception e){
     System.debug(e);
 }
 test.stopTest();
 
 }


}
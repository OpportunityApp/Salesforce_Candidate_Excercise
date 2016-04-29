@isTest
            public class OpportunityControllerTest {
            private Static String PAGE1='Page.getOpportunities';
             public testMethod static void Test1(){
             test.StartTest();
             Test.setCurrentPageReference(new PageReference(PAGE1));
             Opportunity_Controller  opportunity_Controller   = new Opportunity_Controller();
             opportunity_Controller.getOpportunities();
             test.stopTest();     
            
             
             }
            
            
            }
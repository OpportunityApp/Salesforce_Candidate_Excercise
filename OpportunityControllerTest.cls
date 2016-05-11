@isTest
            public class OpportunityControllerTest {
            private Static String PAGE1='Page.getOpportunities';
             public testMethod static void loadOpportunitiesTest(){
             test.StartTest();
             Test.setCurrentPageReference(new PageReference(PAGE1));
             OpportunityController  opportunityController   = new OpportunityController();
             opportunityController.getOpportunities();
             test.stopTest();     
            
             
             }
            
            
            }
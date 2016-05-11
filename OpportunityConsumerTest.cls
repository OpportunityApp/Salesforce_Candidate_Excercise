@isTest
public class OpportunityConsumerTest {
    private Static String URL='https://superman-caves.herokuapp.com/opportunities/1/opportunities?';
    private Static String REQUEST_DATA ='';
    public testMethod static void loadOpportTest(){
    test.startTest();
    OpportunityConsumer.loadOpportunities(URL,REQUEST_DATA);
    test.StopTest();
    }
    }
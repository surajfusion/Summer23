public class SUM23_FutureMethod {
	
    public SUM23_FutureMethod(){
        normalMethod();
        futureMethod();
        normalMethod2();
    }
    
    public static void normalMethod(){
        System.debug('NORMAL');
    }
    
    @future
    public static void futureMethod(){
        System.debug('FUTURE');
        ID jobID = System.enqueueJob(new SUM23_QueueableClass());
    }
    
    @future
    public static void futureMethod2(){
        System.debug('More FUTURE');

    }
    
    public static void normalMethod2(){
        System.debug('NORMAL 2');
    }
    
}
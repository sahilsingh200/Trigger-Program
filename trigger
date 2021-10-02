trigger UpdatAccount on Account (before insert,before update) {
   
	List<Account> aclist=new List<Account>();
    if(Trigger.isUpdate)
    {
      integer count=0;
		for(Account aa:Trigger.new)
        {
            if(aa.AnnualRevenue==100)
            {
                aa.Name='Update from Trigger';
                count++;
            }
        }
      System.debug(count);
    }
    	
}

trigger UpdatAccount on Account (before insert,before update) {
   
	List<Account> aclist=new List<Account>();
    if(Trigger.isUpdate)
    {
      integer count=0;
		for(Account account:Trigger.new)
        {
            if(account.AnnualRevenue==100)
            {
                account.Name='Update from Trigger';
                count++;
            }
        }
   
    }
    	
}

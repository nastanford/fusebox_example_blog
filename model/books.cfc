component books accessors="true" 
{

	public object function init()
	{
		return this;
	}

	public query function getAll() {
		var queryService = new query(); 
		queryService.setDatasource("cfbookclub"); 
 		var result = queryService.execute(sql="select * from books"); 
    	var results = result.getResult(); 
		return results;		
	}

}
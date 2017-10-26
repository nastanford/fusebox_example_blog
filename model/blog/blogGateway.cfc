component blogGateway accessors="true" 
{

	public object function init()
	{
		return this;
	}

	public query function getAll() {
		var queryService = new query(); 
		queryService.setDatasource("exampleBlogdb"); 
 		var result = queryService.execute(sql="select * from blogpost"); 
    	var results = result.getResult(); 
		return results;		
	}

}
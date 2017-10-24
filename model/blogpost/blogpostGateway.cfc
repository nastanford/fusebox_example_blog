component output="false"
{

	/* init */
	public any function init()
	{
		var INSTANCE = {};
		INSTANCE.dao = createObject('component', 'BlogpostDAO').init();
		return this;
	}

	/* getAll */
	public Blogpost[] function getAll()
	{
		var collection = [];
		var obj = '';
		var qry = '';
		var i = 0;
		/* get all records from database */
		var q= new query();
		q.setdatasource(exampleBlogdb);
		q.setsql('SELECT * FROM blogpost');
		qry=q.execute().getresult();
		/* load value objects */
		for(i=1;i<="#qry.recordcount#";i++)
		{
			obj = createObject('component', 'Blogpost').init();
			obj.setId(qry.Id[i]);
			obj.setTitle(qry.Title[i]);
			obj.setBody(qry.Body[i]);
			obj.setAuthorid(qry.Authorid[i]);
			obj.setDatecreated(qry.Datecreated[i]);
			obj.setIsactive(qry.Isactive[i]);
			arrayAppend(collection, obj);
		}
		/* return success */
		return collection;
	}
	
	/* getAll_paged */
	public Blogpost[] function ngetAll_paged(numeric start,numeric count)
	{
		var collection = [];
		var obj = '';
		var qry = '';
		var i = 0;
		var end=0;
		/* get all records from database */
		var q= new query();
		q.setdatasource(exampleBlogdb);
		q.setsql('SELECT * FROM blogpost');			
		qry=q.execute().getresult();
		
		/* load value objects */
		if((ARGUMENTS.start + ARGUMENTS.count - 1) GTE qry.recordcount)
			end =  qry.recordcount;
		else
			end= ARGUMENTS.start + ARGUMENTS.count - 1;
		
		for(i="#ARGUMENTS.start#";i<="#end#";i++)
			{
			 obj = createObject('component', 'Blogpost').init();
			obj.setId(qry.Id[i]);
			obj.setTitle(qry.Title[i]);
			obj.setBody(qry.Body[i]);
			obj.setAuthorid(qry.Authorid[i]);
			obj.setDatecreated(qry.Datecreated[i]);
			obj.setIsactive(qry.Isactive[i]);
			arrayAppend(collection, obj);
			}
		/* return success */
		return collection;
	}
	
	/* count */
	public numeric function count()
	{
		var qry = "";
		var q=new query();
		q.setdatasource(exampleBlogdb);
		q.setsql('SELECT COUNT(id) AS total
			FROM blogpost');
		qry=q.execute().getresult();
		return qry.total[1];
	}

}

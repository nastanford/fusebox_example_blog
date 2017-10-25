component output="false" accessors="true"   
{
	property name="oBlogPost" type="any"  default="";
	property name="oBlogPostDAO" type="string"  default="";
	property name="oBlogPostGateway" type="string"  default="";

	/* init */
	function init()
	{
		oBlogPost 				= createObject('component', 'blogpost').init();
		oBlogPostDAO 			= createObject('component', 'blogpostDAO').init();
		oBlogPostGateway 	= createObject('component', 'blogpostGateway').init();

		/* return success */
		return this;
	}

	
	
	/*
	
	BLOGPOST SERVICES
	
	*/
	
	/* Create blogpost */
	remote blogpost function createblogpost(blogpost item)
	{
		/* Auto-generated method 
		  Insert a new record in blogpost 
		  Add authorization or any logical checks for secure access to your data */
		idcol=INSTANCE.com.blogpostDAO.create(ARGUMENTS.item.getId(), ARGUMENTS.item.getTitle(), ARGUMENTS.item.getBody(), ARGUMENTS.item.getAuthorid(), ARGUMENTS.item.getDatecreated(), ARGUMENTS.item.getIsactive());
		/* return created item */
		return INSTANCE.com.blogpostDAO.read(idcol);
	}
	
	
	/* Delete blogpost */
	remote void function deleteblogpost(numeric Id)
	{
		
		/* Auto-generated method
		         Delete a record in the database 
				 Add authorization or any logical checks for secure access to your data */
				 
		INSTANCE.com.blogpostDAO.delete(ARGUMENTS.Id); 
		/* return success */
		return;
	}
	
	/* Get All blogpost */
	remote blogpost[] function getAllblogpost()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array 
				Add authorization or any logical checks for secure access to your data */
		/* return items */		
		return INSTANCE.com.blogpostGateway.getAll();
	}
	
	/* Get All Paged blogpost */
	remote blogpost[] function getblogpost_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numItems number of records as an array or query from the database for this startIndex 
				 Add authorization or any logical checks for secure access to your data */
		/* return paged items */
		return INSTANCE.com.blogpostGateway.getAll_paged(ARGUMENTS.startIndex+1, ARGUMENTS.numItems);
	}
	
	/* Get blogpost */
	remote blogpost function getblogpost(numeric Id)
	{
		
		/* Auto-generated method
		         Retrieve a single record and return it as a query or array 
				 Add authorization or any logical checks for secure access to your data */
		/* return item */
		return INSTANCE.com.blogpostDAO.read(ARGUMENTS.Id);
	}
	
	/* Update blogpost */
	remote blogpost function updateblogpost(blogpost item)
	{
		
		/* Auto-generated method
		         Update an existing record in the database 
				 Add authorization or any logical checks for secure access to your data */
		/* update blogpost */
		INSTANCE.com.blogpostDAO.update(ARGUMENTS.item.getId(), ARGUMENTS.item.getTitle(), ARGUMENTS.item.getBody(), ARGUMENTS.item.getAuthorid(), ARGUMENTS.item.getDatecreated(), ARGUMENTS.item.getIsactive()); 
		/* return success */
		return ARGUMENTS.item;
	}
	
	
	/* Count blogpost */
	remote numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table 
				 Add authorization or any logical checks for secure access to your data  */
		return INSTANCE.com.blogpostGateway.count(); 
	}

}

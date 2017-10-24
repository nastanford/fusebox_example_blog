component output="false" hint="CFBuilder-Generated:bloguser"
{
	/*
           README for sample service

          This generated sample service contains functions that illustrate typical service operations.
          Use these functions as a starting point for creating your own service implementation. Modify the function signatures, 
          references to the database, and implementation according to your needs. Delete the functions that you do not use.
                
          Save your changes and return to Flash Builder. In Flash Builder Data/Services View, refresh the service. 
          Then drag service operations onto user interface components in Design View. For example, drag the getAllItems() operation onto a DataGrid.
                                
          This code is for prototyping only.
          Authenticate the user prior to allowing them to call these methods. You can find more information at http://www.adobe.com/go/cf9_usersecurity

      */


	var INSTANCE = {};
	INSTANCE.com = {};
	
	/* load bloguser components */
	INSTANCE.com.bloguser = createObject('component', 'Bloguser').init();
	INSTANCE.com.bloguserDAO = createObject('component', 'BloguserDAO').init();
	INSTANCE.com.bloguserGATEWAY = createObject('component', 'BloguserGateway').init();
	

	/* init */
	function init()
	{
		/* return success */
		return this;
	}

	
	
	/*
	
	BLOGUSER SERVICES
	
	*/
	
	/* Create bloguser */
	remote bloguser function createbloguser(bloguser item)
	{
		/* Auto-generated method 
		  Insert a new record in bloguser 
		  Add authorization or any logical checks for secure access to your data */
		idcol=INSTANCE.com.bloguserDAO.create(ARGUMENTS.item.getId(), ARGUMENTS.item.getEmail(), ARGUMENTS.item.getName(), ARGUMENTS.item.getDatecreated(), ARGUMENTS.item.getIsactive());
		/* return created item */
		return INSTANCE.com.bloguserDAO.read(idcol);
	}
	
	
	/* Delete bloguser */
	remote void function deletebloguser(numeric Id)
	{
		
		/* Auto-generated method
		         Delete a record in the database 
				 Add authorization or any logical checks for secure access to your data */
				 
		INSTANCE.com.bloguserDAO.delete(ARGUMENTS.Id); 
		/* return success */
		return;
	}
	
	/* Get All bloguser */
	remote bloguser[] function getAllbloguser()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array 
				Add authorization or any logical checks for secure access to your data */
		/* return items */		
		return INSTANCE.com.bloguserGateway.getAll();
	}
	
	/* Get All Paged bloguser */
	remote bloguser[] function getbloguser_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numItems number of records as an array or query from the database for this startIndex 
				 Add authorization or any logical checks for secure access to your data */
		/* return paged items */
		return INSTANCE.com.bloguserGateway.getAll_paged(ARGUMENTS.startIndex+1, ARGUMENTS.numItems);
	}
	
	/* Get bloguser */
	remote bloguser function getbloguser(numeric Id)
	{
		
		/* Auto-generated method
		         Retrieve a single record and return it as a query or array 
				 Add authorization or any logical checks for secure access to your data */
		/* return item */
		return INSTANCE.com.bloguserDAO.read(ARGUMENTS.Id);
	}
	
	/* Update bloguser */
	remote bloguser function updatebloguser(bloguser item)
	{
		
		/* Auto-generated method
		         Update an existing record in the database 
				 Add authorization or any logical checks for secure access to your data */
		/* update bloguser */
		INSTANCE.com.bloguserDAO.update(ARGUMENTS.item.getId(), ARGUMENTS.item.getEmail(), ARGUMENTS.item.getName(), ARGUMENTS.item.getDatecreated(), ARGUMENTS.item.getIsactive()); 
		/* return success */
		return ARGUMENTS.item;
	}
	
	
	/* Count bloguser */
	remote numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table 
				 Add authorization or any logical checks for secure access to your data  */
		return INSTANCE.com.bloguserGateway.count(); 
	}

}

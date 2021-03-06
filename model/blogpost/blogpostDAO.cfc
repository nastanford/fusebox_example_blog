component output="false"
{
	/* Auto-generated method
		         Add authroization or any logical checks for secure access to your data */
	/* init */
	public any function init()
	{
			return this ;
	}
	
	/* create */
	public any function create(numeric id, string title, string body, numeric authorid, date datecreated, numeric isactive )
	{
				
		/* Auto-generated method
		         Add authroization or any logical checks for secure access to your data */
		var IdentityCol="";
		var qry="";	
		/*TODO:  Below code is for table without auto increment enabled for primary key .Change the query Appropriately*/
		/* insert record */
		var q =new query();
		q.setdataSource(exampleBlogdb);
		q.setsql('INSERT INTO blogpost
			(
				id,title,body,authorid,datecreated,
				isactive
			)
			VALUES
			(
				#ARGUMENTS.id#,
				#ARGUMENTS.title#,
				#ARGUMENTS.body#,
				#ARGUMENTS.authorid#,
				#ARGUMENTS.datecreated#,
				#ARGUMENTS.isactive#
			)');
		var r=q.execute().getresult();
		
		
		if(arguments.id NEQ '')
			IdentityCol=arguments.id;
					      
		 else
		 {
		/*TODO: This logic is for diffrent db's.Delete the conditions not applicable */	 
      	 if(IsDefined("qry.GENERATEDKEY"))
            identityCol = qry.GENERATEDKEY;
		 else if(IsDefined("qry.IDENTITYCOL"))/* SQL Server only*/	
            identityCol = qry.IDENTITYCOL;
      	 else if(IsDefined("qry.GENERATED_KEY")) /* MySQL only*/
            identityCol = qry.GENERATED_KEY;
      	 else if(IsDefined("qry.GENERATED_KEYS"))
            identityCol = qry.GENERATED_KEYS;
      	 else if(IsDefined("qry.ROWID"))/* Oracle only */
            identityCol = qry.ROWID;
      	 else if(IsDefined("qry.SYB_IDENTITY"))/* Sybase only */
            identityCol = qry.SYB_IDENTITY;
      	 else if(IsDefined("qry.SERIAL_COL")) /*Informix only*/
            identityCol = qry.SERIAL_COL;
      	 else if(IsDefined("qry.KEY_VALUE"))
            identityCol = qry.KEY_VALUE;
      	
		
	  	}	
		/* return IdentityCol */
		return IdentityCol;
	}
	
	
	/* read */
	public Blogpost function read(id)
	    {
		
		/* Auto-generated method
		         Add authroization or any logical checks for secure access to your data */
		var obj = createObject('component', 'Blogpost').init();
		var i = 1;
		var qry="";
		
		var q= new query();
		q.setdatasource(exampleBlogdb);
		q.setsql('SELECT id,title,body,authorid,datecreated,
					isactive
			FROM blogpost
			where id = "#ARGUMENTS.id#"');
		qry=q.execute().getresult();	
		/* load value object */
		obj.setid(qry.id[i]);
		obj.settitle(qry.title[i]);
		obj.setbody(qry.body[i]);
		obj.setauthorid(qry.authorid[i]);
		obj.setdatecreated(qry.datecreated[i]);
		obj.setisactive(qry.isactive[i]);
		/* return success */
		return obj;
	    }
	
	/* update */
	public void function update(numeric id,	string title,	string body,	numeric authorid,	date datecreated,	numeric isactive)
		{
		/* Auto-generated method
		         Add authroization or any logical checks for secure access to your data */
		
		var qry="";
		/* update database */
		var q =new query();
		q.setdatasource(exampleBlogdb);
		q.setsql('UPDATE blogpost
			SET title = "#ARGUMENTS.title#" ,
				body = "#ARGUMENTS.body#" ,
				authorid = "#ARGUMENTS.authorid#" ,
				datecreated = "#ARGUMENTS.datecreated#" ,
				isactive = "#ARGUMENTS.isactive#" 
			WHERE id = "#ARGUMENTS.id#" ');
	    qry=q.execute().getresult();		
		
		
		}
	
	/* delete */
	public void function delete(numeric id)
		{
		/* Auto-generated method
		         Add authroization or any logical checks for secure access to your data */
		var qry="";
		/* delete from database */
		var q =new query();
		q.setdatasource("exampleBlogdb");
		q.setsql('DELETE FROM blogpost
			WHERE id = "#ARGUMENTS.id#"' );
		qry=q.execute().getresult();
		
		}

}

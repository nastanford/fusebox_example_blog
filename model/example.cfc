component book accessors="true" 
{
	property name="bookid" type="any" displayname="BookID" hint="BookID";
	property name="authorid" type="numeric" displayname="AuthorID" hint="AuthorID";
	property name="title" type="string" displayname="Title" hint="Title";
	property name="bookimage" type="any" displayname="BookImage" hint="Book Image";
	property name="thumbnailimage" type="any" displayname="ThumbNailImage" hint="Thumb Nail Image";
	property name="bookdescription" type="string" displayname="BookDescription" hint="Book Description";
	property name="isspotlight" type="any" displayname="IsSpotLight" hint="Is Spot Light";
	property name="genre" type="string" displayname="Genre" hint="Genre";

	public object function init()
	{
		return this;
	}

	public any function getAll()
	 displayname="GetAll" description="Get All Books" hint="Get All Books"
	{
		return "test";
	}

}
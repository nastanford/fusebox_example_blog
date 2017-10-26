component blog accessors="true" 
{
	property name="blogid" type="any" displayname="BlogID" hint="BlogID";
	property name="authorid" type="numeric" displayname="AuthorID" hint="AuthorID";
	property name="title" type="string" displayname="Title" hint="Title";
	property name="body" type="string" displayname="Body" hint=" Body";
	property name="isActive" type="any" displayname="isActive" hint="Is Active";
	property name="genre" type="string" displayname="Genre" hint="Genre";

	public object function init()
	{
		return this;
	}

}
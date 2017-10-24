component blogpost output="false" accessors="true"
{
	/* properties */
	property name="Id" type="numeric"  default="";
	property name="Title" type="string"  default="";
	property name="Body" type="string"  default="";
	property name="Authorid" type="numeric"  default="";
	property name="Datecreated" type="date"  default="";
	property name="Isactive" type="numeric"  default="";	

	/* init */
	public any function init()
	{
		return this;
	}
}
	
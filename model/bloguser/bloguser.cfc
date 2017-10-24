/*
*
*
***/
component bloguser output="false" accessors="true" 
{
	/* properties */
	property name="id" type="any" displayname="ID" hint="ID" default="";
	property name="email" type="string" displayname="Email" hint="Email" default="";
	property name="name" type="string" displayname="Name" hint="Name" default="";
	property name="datecreate" type="date" displayname="Date Create" hint="Date Create" default="";
	property name="isactive" type="string" displayname="isActive" hint="isActive" default="";

	public any function init()
	{
		return this;
	}

}
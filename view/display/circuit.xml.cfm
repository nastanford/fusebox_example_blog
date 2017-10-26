<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE circuit>
<!--
	Example circuit.xml file for the display portion of an application.
-->
<circuit access="internal">
	
	<!--
		Example display fuseaction. The output of the template is placed
		in a content variable which is used in the layout template.
	-->
	<fuseaction name="sayHello">
		<include template="dsp_hello" contentvariable="body" />
	</fuseaction>

	<fuseaction name="navbar">
		<include template="dsp_navbar" contentvariable="navbar" />
	</fuseaction>

	<fuseaction name="categories">
		<include template="dsp_categories" contentvariable="categories" />
	</fuseaction>

	<fuseaction name="search">
		<include template="dsp_search" contentvariable="search" />
	</fuseaction>

	<fuseaction name="blogpost">
		<include template="dsp_blogpost" contentvariable="blogpost" />
	</fuseaction>
  
  
	
</circuit>

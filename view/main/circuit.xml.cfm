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
	<fuseaction name="about">
		<include template="dsp_about" contentvariable="body" />
	</fuseaction>

  <fuseaction name="contact">
		<include template="dsp_contact" contentvariable="body" />
	</fuseaction>
	
	<fuseaction name="home">
		<include template="dsp_home" contentvariable="body" />
	</fuseaction>
	

	
</circuit>

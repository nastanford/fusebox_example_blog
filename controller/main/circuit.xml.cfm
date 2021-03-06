<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE circuit>
<!--
	Example circuit.xml file for the controller portion of an application.
	Only the controller circuit has public access - the controller circuit
	contains all of the fuseactions that are used in links and form posts
	within your application.
-->
<circuit access="public" xmlns:cf="cf/">
	
	<!--
		Apply a standard layout to the result of every request.
		This is fine for simple applications that have just one layout but
		for more complicated situations you will need to do something more
		advanced.
	-->
	<postfuseaction>
		<do action="layout.mainLayout" />
	</postfuseaction>

	<prefuseaction>
		<!-- Links for the lay_template -->
		<xfa name="home" value="main.home" />
		<xfa name="about" value="main.about" />
		<xfa name="contact" value="main.contact" />
		<do action="display.navbar" />
		<do action="display.categories" />
    <do action="display.search" />
	</prefuseaction>
	
	<!--
		Default fuseaction for application, uses model and view circuits
		to do all of its work:
	-->
	<fuseaction name="about">
		<set name="request.page.title" value="About"/>
		<do action="vMain.about" />  
	</fuseaction>
		
	<fuseaction name="contact">
		<set name="request.page.title" value="Contact"/>
		<do action="vMain.contact" />  
	</fuseaction>

	<fuseaction name="home">
		<set name="request.page.title" value="Home"/>
    <do action="display.blogpost" />
		  <invoke class="books" method="getAll" returnvariable="qryBooks"></invoke>
		<do action="vMain.home" />  
	</fuseaction>

</circuit>
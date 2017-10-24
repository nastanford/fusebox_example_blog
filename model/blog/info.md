Service =>
-------------
=> gateway
=> DAO 
=> Bean

The service objects are an abstraction layer that 
"hides" the gateways/DAOs/beans (your model) and 
provides a simpler layer of interaction with the 
rest of your application.

Example Text to help those that might need it. 
----------------
Current Tables
----------------
blogpost
----------------
id
title
body
authorid
datecreated
isactive
----------------
BlogUser
----------------
email
name
datecreate
isActive
----------------

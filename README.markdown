Code Judge
==================

Project in Ruby
----------
Ruby version 2.0.0

About
---------
This project is used to do something like that an online judge does. 
- The client sends the code to the server
- Server runs the code and sends the output back to the client.

So what's so great about this? We have used RMI to implement this in a distributed system.
Apart from that there is nothing so great

Running it
---------
- Get Ruby using one of the following ways
	+ Windows: Ruby installer for windows
	+ Unix Family (Mac OSX, Linux) : Use Rbenv or Rvm Ruby version managers. 

- Run the server : 
$ ruby server.rb
- Run the client on another terminal: 
$ ruby client.rb

- It has been setup to run on localhost. You can check the server and client code and make the changes in the places specified. 

License
-----------
Licensed under the GNU GPLv3
Read the License File for details. 

Copyright (C) 2013  Prashant Anantharaman

# DWH-Project

/*==============================================================*/
/* author: bea													*/
/* created on: 20151103					                        */
/* last update on: 20151103				                        */
/* purpose of README: notes for the group about the current 
   state of the ETL process(es) of DWH final project				                        */
/*==============================================================*/

Pending issues of the SSIS for loading the input data:


Issue 1

I found an option "Multiple flat files connection manager" which I used for the tables with Data 
(the ones where each month is in a separate txt file), they have the same structure so it works fine.
I believe there must be a way to do something like this also for the connection manager for the other
txt files (so that we do not need 1 Flat file connection manager for each txt).
I have not found that way though..


Issue 2

There are many warning signs (a "!" inside a triangle) because of truncations. It is ok but ugly...maybe 
some way to get rid of these?


Issue 3

The "lookup" box in DIM POS Data Flow (checking the Store table) was giving me an error (so it is not
there at this moment, need to add and configure correctly). Also all the flows of DATAload.dtsx are 
currently without lookups (and they need them!). I was getting error about the inconsistent data types
(in both cases). I tried to apply Data Conversion to various different types but no success.

Issue 4

I could not get the Data Flow DIM Product working...it is currently disabled for the sake of testing.


Issue 5

The flat files for NoMatch (in lookups) always appear empty and given the conclusions from the last
two days (about the inconsistencies in keys and stuff) I am not sure this is ok!


Next step:

make this ETL work correctly, optimize it, start exploring the data in order to prepare business 
questions and DWH structure,...

AspNet.Identity.MySQL
=====================

ASP.NET Identity provider that uses MySQL for storage.

# Usage

## Setup the database
* Select a database and execute **MySQLIdentity.sql** to create the Identity tables
* If you experience errors, execute table creation scripts one by one

## Adding to your solution
* Download this project code
* Add project to your solution
* Reference the project from your ASP.NET application

## Running the code
* Remove all usages of **ApplicationDbContext**
* Modify your **ApplicationUserManager** to use the **UserStore** from this project

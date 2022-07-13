# HealthCareAPI

## Achievements / Improvements

- [x] created base layers (DbContext, Controllers, Models, Unit Testing, Startup)

- [x] finished swagger configuration in Startup

- [x] finished log4net configuration with the respective files and packages

- [x] configured entity framework for further use inside project

- [x] created registration endpoints for patients and doctors

- [x] added admin role and three default admins through manual code excecution 

- [x] created one login endpoint for all users

- [x] enabled JWT authentication and authorization for use of project properties

- [ ] created profile module to view and modify user data for all users

- [ ] created doctor module to view, update, and delete (soft delete) doctors

- [ ] patient module ...

- [ ] clinic module ...

- [ ] appointment module ...

- [ ] file module ...

- [ ] ...

## Built with
<ul>
  <li>.Net Core 5.0</li>
  <li>Visual Studio</li>
  <li>MSSQL Server</li>
  <li>Angular</li>
</ul>

## Installation Guide (only supported in Windows OS)

```
# Clone the repo
git clone https://github.com/jonabako/HealthCareAPI
```

```
# enter the directory from your local machine
cd ..\HealthCareAPI

# open project solution with visual studio
Server\HealthCareAPI\HealthCareAPI.sln

# open package manager console
Alt + V + E + O

# add migration
PM> add-migration InitialMigration

# create database build database in (local) mssql server
PM> update-database

# open microsoft sql management studio (commonly found in)
C:\Program Files (x86)\Microsoft SQL Server Management Studio 18\Common7\IDE\Ssms.exe

# open sql file found in project folder and execute
Ctrl + O 
..\HealthCareAPI\SQL\code.sql
F5

# build and run
Ctrl + F5
```

## Run tests

```powershell
> ...
```

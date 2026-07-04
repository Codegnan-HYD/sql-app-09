# sql-app-09
SQL application to implement one-to-one association (optional + bidirectional)

## Problem Statement

### Students & Laptops

#### Data:
* Student Data: First Name and Last Name.
* Laptop Data: Serial Number and Model.

#### Rules:
* A student may or may not be assigned a university laptop.
* A laptop may or may not be assigned to exactly one student.
* IT executive needs to see whether students are either issued or not issued laptops.
* IT executive needs to see whether laptops are either avilable or not available to be issued.

#### Create ER Diagrams to show: 
1. Conceptual Data Model
2. Logical Data Model
3. Physical Data Model

#### Write SQL Queries to: 
1. create tables
2. insert records for 10 laptops and 10 students
	- there are 5 students who are issued university laptops
	- there are 5 students who are not issued university laptops.
3. find students who are issued university laptops.
4. get all students including those who are not issued university laptops
5. get all university laptops including those which are not issued
6. get all students and all university laptops
7. find students who are not issued university laptops
8. find university laptops which are not issued to students

## Getting Started
Follow these steps to get a local repository up and running:

1. Clone the repository on local machine:
`git clone https://github.com/Codegnan-HYD/sql-app-09.git`

2. Create a new branch for your work:
`git branch <your-branch-name>`

3. Switch to your branch:
`git checkout <your-branch-name>`

## Contributing
1. Create files and save the ER Diagrams with Conceptual Data Model:
`ERD-Conceptual.png`

2. Create a file and save the ER Diagram with Logical Data Model:
`ERD-Logical.png`

3. Create a file and save the ER Diagram with Physical Data Model:
`ERD-Physical.png`

4. Create a file and save all the DDL SQL statements:
`DDL.sql`

5. Create a file and save all the DML SQL statements:
`DML.sql`

6. Create a file and save all the DQL SQL statements:
`DQL.sql`

7. Add all the files to the staging area:
<br>`git add ERD-Conceptual.png`
<br>`git add ERD-Logical.png`
<br>`git add ERD-Physical.png`
<br>`git add DDL.sql`
<br>`git add DML.sql`
<br>`git add DQL.sql`

8. Commit your changes:
`git commit -m <your commit message>`

9. Push your branch to the remote repository:
`git push https://github.com/Codegnan-HYD/sql-app-09.git <your-branch-name>`

## Prerequisites
1. draw.io 
2. MySQL Database Server 9.7.0
3. MySQL Workbench 8.0.47
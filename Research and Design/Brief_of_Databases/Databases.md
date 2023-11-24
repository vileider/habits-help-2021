SQL - See-Quell

- Mainly designed for maintaining the data in relational database management systems
- Special tool used by data professionals for handling structured data (data which is stored in the form of table)
- Easily create and manipulate the database
- Access and modify the table rows and columns

Reasons why it is widely used:

- The basic use of SQL for data professionals and SQL users is to insert, update, and delete the data from the relational database.
- SQL allows the data professionals and users to retrieve the data from the relational database management systems.
- It also helps them to describe the structured data.
- It allows SQL users to create, drop, and manipulate the database and its tables.
- It also helps in creating the view, stored procedure, and functions in the relational database.
- It allows you to define the data and modify that stored data in the relational database.
- It also allows SQL users to set the permissions or constraints on table columns, views, and stored procedures.

https://www.javatpoint.com/sql-tutorial

https://www.javatpoint.com/dbms-sql-introduction

MySQL

- Relational database management system
- An open-source database, so you don't have to pay a single penny to use it
- A very powerful program that can handle a large set of functionality of the most expensive and powerful database packages
- Customizable because it is an open-source database
- Open-source GPL license facilitates programmers to modify the SQL software according to their own specific environment
- Quicker than other databases, so it can work well even with the large data set
- Support many operating systems with many languages like PHP, PERL, C, C++, JAVA, etc.
- Use a standard form of the well-known SQL data language
- Very friendly with PHP
- Support large databases, up to 50 million rows or more in a table

NoSQL

Advantages

- Can store and retrive huge amount of data
- The relationship between the data you store is not that important
- The data changing over time and is not structured
- The data is growing continuously and you need to scale the database regular to handle the data
- High scalability
- Partitioning of data and placing it on multiple machines in such a way that the order of the data is preserved is sharding
- High availability
- Auto replication feature in NoSQL databases makes it highly available because in case of any failure data replicates itself to the previous consistent state

Disadvantages

- Narrow focus
- Relational databases are a better choice in the field of Transaction Management than NoSQL
- Open-source
- Data management in NoSQL is much more complex than a relational database
- Challenge to install and even more hectic to manage on a daily basis
- GUI is not available
- Backup
- Large document size
- MongoDB and CouchDB store data in JSON format

https://www.geeksforgeeks.org/introduction-to-nosql/

https://www.javatpoint.com/mysql-tutorial

MongoDB

- Document-oriented
- Open-source document database that provides high performance, high availability, and automatic scaling
- Available under General Public license for free, and it is also available under Commercial license from the manufacturer
- MongoDB was designed to work with commodity servers
- Support ad hoc queries
- Can search by field, range query and it also supports regular expression searches
- Can index any field in a document
- Can perform Reads and Writes and a Slave copies data from the master and can only be used for reads or back up (not writes)
- Can run over multiple servers
- The data is duplicated to keep the system up and also keep its running condition in case of hardware failure
- Load balancing
- Uses JavaScript instead of Procedures
- Schema-less database written in C++
- Provides high performance
- Stores files of any size easily without complicating your stack
- Easy to administer in the case of failures
- Support JSON data model with dynamic schemas
- Auto-sharding for horizontal scalability
- Built in replication for high availability

https://www.javatpoint.com/mongodb-tutorial

MariaDB

- Open-source
- Relational database management system and could be used as a great replacement of MySQL
- Can stores data in various tables
- To establish the relationship between these tables, primary keys and foreign keys are used.
- Fast, scalable and robust
- Rich ecosystem of plugins, storage engines, etc which makes it very versatile for a wide variety of use cases
- Licenced under GPL, LGPL, or BSD
- Use a standard and popular querying language
- Run on different operating systems and supports variety of programming languages
- Offer support for PHP and offer Galera cluster technology

https://www.geeksforgeeks.org/introduction-of-mariadb/

CouchDB - IBM

- Fully managed, distributed database optimized for heavy workloads and fast-growing web and mobile apps
- Serverless database
- Powerful and scalable database with an intuitive HTTP API that scales from a developer's laptop to production database clusters
- Apache-licensed open source database
- Replication protocol allows data to be synchronized between clusters spread across the globe
- Proven for production and is available at no charge to download and use for any purpose
- Open data layer for your applications to build once and run anywhere
- High availability
- Replicas
- Fully automated deployment and configuration of Apache CouchDB clusters
- Single Operator deployment can support single, multiple, or all Kubernetes namespaces
- Lite is free to use

https://www.ibm.com/cloud/cloudant?utm_content=SRCWW&p1=Search&p4=43700066788812248&p5=e&gclid=CjwKCAjwzt6LBhBeEiwAbPGOgfM2tmnLp_ICfrUx0ID3MY1PWFOhY5G2jXiFpN87u5AhVJddnIoFCRoCe9YQAvD_BwE&gclsrc=aw.ds

https://cloud.ibm.com/docs/Cloudant?topic=Cloudant-apache-couchdb-overview&_ga=2.214543063.1165320250.1604321683-1614077795.1594908456

Cloud databases

Microsoft Azure - SQL

- You need to have an account and a subscription
- A portal is a visual interface, which users can use through a browser, or phone app, or Windows app to interact and do various things with Azure Resources
- Use to represent this family of SQL in the cloud
- Free for 12 months, up to the monthly limits

https://www.geeksforgeeks.org/microsoft-azure-introduction-to-azure-sql/

https://azure.microsoft.com/en-gb/free/search/?&ef_id=CjwKCAjwzt6LBhBeEiwAbPGOgQlL9e_xkcjRGE0Qmks7K7fvlaihEgAUiZMAx9etIyLbAnBFEn55fxoCvWUQAvD_BwE:G:s&OCID=AID2200274_SEM_CjwKCAjwzt6LBhBeEiwAbPGOgQlL9e_xkcjRGE0Qmks7K7fvlaihEgAUiZMAx9etIyLbAnBFEn55fxoCvWUQAvD_BwE:G:s&gclid=CjwKCAjwzt6LBhBeEiwAbPGOgQlL9e_xkcjRGE0Qmks7K7fvlaihEgAUiZMAx9etIyLbAnBFEn55fxoCvWUQAvD_BwE

Amazon Relational database - MySQL

- Easy to set up, operate, and scale a relational database in the cloud
- Provide cost-efficient and resizable capacity, while managing time-consuming database administration tasks
- Access to the full capabilities of a familiar MySQL database
- Amazon RDS automatically patches the database software and backs up your database, storing the backups for a user-defined retention period
- Storage capacity associated with your relational database instance via a single API call
- Expensive!

https://aws.amazon.com/about-aws/whats-new/2009/10/27/introducing-amazon-relational-database-service/

https://aws.amazon.com/rds/

Oracle autonomous database

- Configures and tunes for specific workloads
- Protect sensitive and regulated data automatically, patch your database for security vulnerabilities, and prevent unauthorized access—all with Oracle Autonomous Database
- Detect and protect from system failures and user errors automatically and provide failover to standby databases with zero data loss
- Simplifies database operations for OLTP and real-time analytical applications
- Security with embedded machine learning-based automations
- JSON-centric applications with simple, fast, serverless cloud document database service
- Feature simple document APIs, serverless scaling, high performance ACID transactions, comprehensive security, and low pay-per-use pricing

https://www.oracle.com/uk/autonomous-database/

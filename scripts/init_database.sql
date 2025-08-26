/*
=====================================================
Create Database and Schemas
=====================================================
Script purpose:
        the script creates a new database after checking if one already exists
        if the databse exists, it is dropped and recreated. additionally, the
        script sets up three schemas within the database

WARNING: RUNNING SCRIPT WILL DROP ENTIRE TABLE IF IT EXISTS
        ALL DATA WILL BE DELETED. PROCEED WITH CAUTION
        ENSURE YOU HAVE PROPER BACKUP
*/


USE MASTER;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
        ALTER DATABASE DataWarehouse SET SINGLUE_USER WITH ROLLBACK IMMEDIATE;
        DROP DATABASE DataWarehouse;
END;
GO


-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO


-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

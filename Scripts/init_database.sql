/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'Datawarehouse_DwB' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'Datawarehouse_DwB' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse_DwB')
BEGIN
    ALTER DATABASE Datawarehouse_DwB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Datawarehouse_DwB;
END;
GO

-- Create the 'Datawarehouse_DwB' database
CREATE DATABASE Datawarehouse_DwB;
GO

USE Datawarehouse_DwB;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

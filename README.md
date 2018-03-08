# SSIS

This solution is to help practice how to handle slow changing dimensions in SSIS.
The solution includes two projects. 
SCD_DB is SQL Server Database project to create database and tables in SQL Server.
SCD_ETL is the integration service project to extract source data and load into dimension table and records the changes.

The operation system is Windows 10 + SQL Server 2016 + Visual Studio 2015(SSDT).

Publish SCD_DB project first and then excute SCD_ETL project to see the updates records.

## SCD_DB
SQL Server Database project. Create four tables in SQL Server:
dbo.Products / dbo.ExtractProducts / dbo.DimProducts / dbo.ProductsToUpdate

## SCD_ETL
ETL project to record the changes. There are three packages in it.
Control.dtsx: setup origin source data(Products table), excute the other two packages, setup source data changes.
Extract.dtsx: Extract source data and load into ExtractProduct table.
LoadDim.dtsx: Extract data, merge join ExtractProdct table with DimProducts table, conditional split into three situtations(new records, deleted records, updated records), union results and load into DimProducts table as the destination.
At mean time record the SID of the changes to ProductsToUpdate table.

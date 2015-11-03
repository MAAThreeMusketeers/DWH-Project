-- =============================================
-- Authors: Bea Babiak, Carolina Duarte, Andras Kolbert
-- Create date: 20151102
-- Last update: 20151102
-- Description: MAA DWH Final Project 
-- =============================================

/*==============================================================*/
/* Step 1: load the newly created database of source table		*/
/* with the data provided in txt files                          */
/*==============================================================*/

/*==============================================================*/
/* Step 1.1: straightforward data loading                       */
/*==============================================================*/
/* 
the newly created database was loaded with the provided data from txt files using the SQL Import and Export Wizard.
The order of hierarchy of the tables was kept.
Some data types and sizes had to be adjusted. We got some warnings about truncation but everything ran smoothly 
(this kind of warnings is ok and after a validation can be ignored).
The option "column names in the first data row" was unchecked, as txt files have no headers.
*/

/* 
Inconsistency between tables was detected:
/*==============================================================*/
/* Step 1.2: inconsistency 1 (generic SubcategoryID)            */
/*==============================================================*/
	Situation 1: records in Product table with generic Subcategory code (99999999), which does not exist as PK in
		Subcategory table
	Solution: We noticed that each table of the Product branch includes a Generic record.
		We decided to add such dummy record also to the Subcategory table and point the non-existing generic
		Subcategories from the Product table to this generic record. 
*/

insert into SUBCATEGORY
values ('99', '9999', '999999', '99999999', 'GENERICA')


/*==============================================================*/
/* Step 1.3: inconsistency 2 (non-existing foreign keys)        */
/*==============================================================*/
/*	Situation 2: 
		There are subcategoryIDs (FK) in Product table that do not exist in Subcategory table (PK).  52 cases
		-> There are CategoryIDs (FK) in Product table (associated to the previously mentioned non-existing 
			Subcategory IDs) that do not exist in Category table (PK).  10 cases
		-> There are SectionIDs (FK) in Product table (associated to the previously mentioned non-existing 
			Category IDs) that do not exist in Section table (PK).  3 cases

	Solution: (note: order of running is opposite to the order of discovering the inconsistencies: from lower 
		to higher level, so that the FK - PK relations are kept)

/*==============================================================*/
/* Step 1.3.1: non-existing SectionID					        */
/*==============================================================*/

		Each SectionID from Product table that does not have a link in Section table will be created 
		in Section table and all the foreign keys of this table will be set to the IDs attributed to the given
		Section in Product table.
*/
		
--select * from Productsaux
--where [Column 5] not in
--	(select distinct SECTIONID from SECTION)

insert into SECTION
(DEPARTMENTID, SECTIONID, SECTIONDESCRIPTION)
values
('02', '0202', 'DUMMYsection'),
('05', '0504', 'DUMMYsection'),
('02', '0205', 'DUMMYsection')

/*==============================================================*/
/* Step 1.3.2: non-existing CategoryID					        */
/*==============================================================*/
/*
		Each CategoryID from Product table that does not have a link in Category table will be created 
		in Category table and all the foreign keys of this table will be set to the IDs attributed to the given
		Category in Product table.
*/

--select * from Productsaux
--where [Column 6] not in
--	(select distinct CATEGORYID from CATEGORY)

insert into CATEGORY
(DEPARTMENTID, SECTIONID, CATEGORYID, CATEGORYDESCRIPTION)
values
('04', '0401', '040101', 'DUMMYcategory'),
('04', '0404', '040407', 'DUMMYcategory'),
('04', '0404', '040402', 'DUMMYcategory'),
('04', '0404', '040408', 'DUMMYcategory'),
('02', '0202', '020203', 'DUMMYcategory'),
('05', '0504', '050416', 'DUMMYcategory'),
('02', '0202', '020202', 'DUMMYcategory'),
('05', '0504', '050402', 'DUMMYcategory'),
('04', '0405', '040501', 'DUMMYcategory'),
('02', '0205', '020505', 'DUMMYcategory')


/*==============================================================*/
/* Step 1.3.3: non-existing SubcategoryID				        */
/*==============================================================*/
/*
		Each SubcategoryID from Product table that does not have a link in Subcategory table will be created 
		in Subcategory table and all the foreign keys of this table will be set to the IDs attributed to the 
		Subcategory in Product table. There are 52 distinct SubcatedoryIDs without reference (+ the generic 99999999 
		treated in step 1.2).
*/

--select * from Productsaux
--where [Column 7] not in
--	(select distinct SUBCATEGORYID from SUBCATEGORY)

insert into SUBCATEGORY
(DEPARTMENTID, SECTIONID, CATEGORYID, SUBCATEGORYID, SUBCATEGORYDECRIPTION)
values
('01', '0109', '010904', '01090400', 'DUMMYsubcategory'),
('01', '0109', '010906', '01090600', 'DUMMYsubcategory'),
('01', '0109', '010906', '01090620', 'DUMMYsubcategory'),
('01', '0109', '010907', '01090707', 'DUMMYsubcategory'),
('02', '0202', '020202', '02020208', 'DUMMYsubcategory'),
('02', '0202', '020202', '02020210', 'DUMMYsubcategory'),
('02', '0202', '020203', '02020303', 'DUMMYsubcategory'),
('02', '0205', '020505', '02050510', 'DUMMYsubcategory'),
('04', '0401', '040101', '04010107', 'DUMMYsubcategory'),
('04', '0404', '040402', '04040206', 'DUMMYsubcategory'),
('04', '0404', '040402', '04040207', 'DUMMYsubcategory'),
('04', '0404', '040407', '04040708', 'DUMMYsubcategory'),
('04', '0404', '040408', '04040807', 'DUMMYsubcategory'),
('04', '0405', '040501', '04050110', 'DUMMYsubcategory'),
('05', '0504', '050402', '05040210', 'DUMMYsubcategory'),
('05', '0504', '050416', '05041601', 'DUMMYsubcategory'),
('08', '0801', '080101', '08010101', 'DUMMYsubcategory'),
('08', '0801', '080190', '08019001', 'DUMMYsubcategory'),
('08', '0801', '080190', '08019011', 'DUMMYsubcategory'),
('08', '0801', '080190', '08019018', 'DUMMYsubcategory'),
('08', '0801', '080190', '08019020', 'DUMMYsubcategory'),
('08', '0801', '080190', '08019032', 'DUMMYsubcategory'),
('08', '0803', '080390', '08039025', 'DUMMYsubcategory'),
('08', '0803', '080390', '08039091', 'DUMMYsubcategory'),
('08', '0804', '080490', '08049001', 'DUMMYsubcategory'),
('08', '0804', '080490', '08049003', 'DUMMYsubcategory'),
('08', '0804', '080490', '08049004', 'DUMMYsubcategory'),
('08', '0804', '080490', '08049005', 'DUMMYsubcategory'),
('08', '0804', '080490', '08049009', 'DUMMYsubcategory'),
('08', '0804', '080490', '08049010', 'DUMMYsubcategory'),
('08', '0804', '080490', '08049011', 'DUMMYsubcategory'),
('08', '0804', '080490', '08049012', 'DUMMYsubcategory'),
('08', '0804', '080490', '08049017', 'DUMMYsubcategory'),
('08', '0804', '080490', '08049021', 'DUMMYsubcategory'),
('08', '0804', '080490', '08049023', 'DUMMYsubcategory'),
('08', '0804', '080490', '08049027', 'DUMMYsubcategory'),
('08', '0804', '080490', '08049029', 'DUMMYsubcategory'),
('08', '0804', '080490', '08049030', 'DUMMYsubcategory'),
('08', '0806', '080690', '08069004', 'DUMMYsubcategory'),
('08', '0806', '080690', '08069030', 'DUMMYsubcategory'),
('08', '0807', '080701', '08070101', 'DUMMYsubcategory'),
('08', '0807', '080790', '08079019', 'DUMMYsubcategory'),
('08', '0807', '080790', '08079091', 'DUMMYsubcategory'),
('08', '0810', '081090', '08109004', 'DUMMYsubcategory'),
('08', '0810', '081090', '08109011', 'DUMMYsubcategory'),
('08', '0810', '081090', '08109017', 'DUMMYsubcategory'),
('08', '0810', '081090', '08109029', 'DUMMYsubcategory'),
('12', '1201', '120101', '12010101', 'DUMMYsubcategory'),
('99', '9960', '996001', '99600101', 'DUMMYsubcategory'),
('99', '9962', '996201', '99620101', 'DUMMYsubcategory'),
('99', '9990', '999001', '99900101', 'DUMMYsubcategory'),
('99', '9990', '999002', '99900201', 'DUMMYsubcategory')


/*==============================================================*/
/* Step 1.3 observations:									    */
/*==============================================================*/
/*
Another options would be: 
	-to ignore the records with missing links 
		-> this would result in losing data; more specifically 573 records!
	-associating manually each Product with SubcategoryID without reference to an existing SubcategoryID 
		in Subcategory table 
		-> this would result in seeing and SUBJECTIVELY deciding about many registers (573). 
		This approach would be very dangerous without the input and validation of the client!
*/


-----------------------------------------------------------------------------------------loaded until here------------------------------------------


/*==============================================================*/
/* Step 1.4: inconsistency table LINE_ITEM__TL_ and				*/
/*	PAYMENT__TP_										   	    */
/*==============================================================*/
/*
The column TOTALVALUE of the table LINE_ITEM__TL_ and PAYMENT__TP_	 is of type smallint. However, the source data is of type int.
This was changed:
*/

alter table [dbo].[LINE_ITEM__TL_]
alter column [TOTALVALUE] int

alter table [dbo].[PAYMENT__TP_]
alter column [TOTALVALUE] int



/*==============================================================*/
/* Step 1.5: inconsistency file t_2006_11					    */
/*==============================================================*/
/*
In the file t_2006_11 there are POS IDs not existing in the POS table (58 cases). 
Solution: add the respective records to the POS table with foreign keys as assigned in the original table and NULL
value (for columns which are not keys). The columns POSNR and POSCLASS are nullable and we checked the original data;
there are no NULL values so this will be enough to make a distinction between the original and manually adjusted
data (because of the data types of the mentioned columns, this is the best way)
*/

--select * from [dbo].[t_2006_11aux] 
--	where [Column 4] not in
--	(select distinct POSID from POS) 

insert into POS
(STOREID, POSID)
values
('15', '1889'),
('15', '1890'),
('15', '1893'),
('15', '1894'),
('15', '1895'),
('15', '1907'),
('15', '1908'),
('15', '1910'),
('15', '1913'),
('15', '1918'),
('15', '1922'),
('15', '1923'),
('15', '1928'),
('15', '1927'),
('15', '1929'),
('15', '1931'),
('15', '1933'),
('15', '1934'),
('15', '1936'),
('15', '1937'),
('15', '1938'),
('15', '1949'),
('15', '1926'),
('15', '1885'),
('15', '1887'),
('15', '1896'),
('15', '1897'),
('15', '1899'),
('15', '1900'),
('15', '1901'),
('15', '1902'),
('15', '1905'),
('15', '1916'),
('15', '1917'),
('15', '1921'),
('15', '1939'),
('15', '1940'),
('15', '1943'),
('15', '1952'),
('15', '1892'),
('15', '1948'),
('15', '1950'),
('15', '1884'),
('15', '1919'),
('15', '1941'),
('15', '1951'),
('15', '1904'),
('15', '1909'),
('15', '1912'),
('15', '1924'),
('15', '1930'),
('15', '1883'),
('15', '1946'),
('15', '1942'),
('15', '1954'),
('15', '1914'),
('15', '1925'),
('15', '1956')




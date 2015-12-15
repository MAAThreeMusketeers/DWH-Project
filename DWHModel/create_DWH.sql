/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     14/12/2015 22:05:01                          */
/*==============================================================*/
USE DWH

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLELINEITEM') and o.name = 'FK_FACTTABL_RELATIONS_DIMAGEGR')
alter table FACTTABLELINEITEM
   drop constraint FK_FACTTABL_RELATIONS_DIMAGEGR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLELINEITEM') and o.name = 'FK_FACTTABL_RELATIONS_DIMGENDE')
alter table FACTTABLELINEITEM
   drop constraint FK_FACTTABL_RELATIONS_DIMGENDE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLELINEITEM') and o.name = 'FK_FACTTABL_RELCLIENT_DIMCLIEN')
alter table FACTTABLELINEITEM
   drop constraint FK_FACTTABL_RELCLIENT_DIMCLIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLELINEITEM') and o.name = 'FK_FACTTABL_RELDATE1_DIMDATE')
alter table FACTTABLELINEITEM
   drop constraint FK_FACTTABL_RELDATE1_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLELINEITEM') and o.name = 'FK_FACTTABL_RELPRODUC_DIMPRODU')
alter table FACTTABLELINEITEM
   drop constraint FK_FACTTABL_RELPRODUC_DIMPRODU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLELINEITEM') and o.name = 'FK_FACTTABL_RELSECTIO_DIMSECTI')
alter table FACTTABLELINEITEM
   drop constraint FK_FACTTABL_RELSECTIO_DIMSECTI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLELINEITEM') and o.name = 'FK_FACTTABL_RELSTORE_DIMSTORE')
alter table FACTTABLELINEITEM
   drop constraint FK_FACTTABL_RELSTORE_DIMSTORE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLERECEIPT') and o.name = 'FK_FACTTABL_RELAGEGRO_DIMAGEGR')
alter table FACTTABLERECEIPT
   drop constraint FK_FACTTABL_RELAGEGRO_DIMAGEGR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLERECEIPT') and o.name = 'FK_FACTTABL_RELATIONS_DIMCLIEN')
alter table FACTTABLERECEIPT
   drop constraint FK_FACTTABL_RELATIONS_DIMCLIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLERECEIPT') and o.name = 'FK_FACTTABL_RELATIONS_DIMDATE')
alter table FACTTABLERECEIPT
   drop constraint FK_FACTTABL_RELATIONS_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLERECEIPT') and o.name = 'FK_FACTTABL_RELATIONS_DIMSTORE')
alter table FACTTABLERECEIPT
   drop constraint FK_FACTTABL_RELATIONS_DIMSTORE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLERECEIPT') and o.name = 'FK_FACTTABL_RELGENDER_DIMGENDE')
alter table FACTTABLERECEIPT
   drop constraint FK_FACTTABL_RELGENDER_DIMGENDE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLERECEIPT') and o.name = 'FK_FACTTABL_RELPAYMEN_DIMPAYME')
alter table FACTTABLERECEIPT
   drop constraint FK_FACTTABL_RELPAYMEN_DIMPAYME
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIMAGEGROUP')
            and   type = 'U')
   drop table DIMAGEGROUP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIMCLIENT')
            and   type = 'U')
   drop table DIMCLIENT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIMDATE')
            and   type = 'U')
   drop table DIMDATE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIMGENDER')
            and   type = 'U')
   drop table DIMGENDER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIMPAYMENT')
            and   type = 'U')
   drop table DIMPAYMENT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIMPRODUCT')
            and   type = 'U')
   drop table DIMPRODUCT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIMSECTION')
            and   type = 'U')
   drop table DIMSECTION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIMSTORE')
            and   type = 'U')
   drop table DIMSTORE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLELINEITEM')
            and   name  = 'RELATIONSHIP_GENDER_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLELINEITEM.RELATIONSHIP_GENDER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLELINEITEM')
            and   name  = 'RELATIONSHIP_AGEGROUP_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLELINEITEM.RELATIONSHIP_AGEGROUP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLELINEITEM')
            and   name  = 'RELCLIENT_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLELINEITEM.RELCLIENT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLELINEITEM')
            and   name  = 'RELDATE1_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLELINEITEM.RELDATE1_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLELINEITEM')
            and   name  = 'RELPRODUCT_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLELINEITEM.RELPRODUCT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLELINEITEM')
            and   name  = 'RELSECTION_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLELINEITEM.RELSECTION_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLELINEITEM')
            and   name  = 'RELSTORE_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLELINEITEM.RELSTORE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FACTTABLELINEITEM')
            and   type = 'U')
   drop table FACTTABLELINEITEM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLERECEIPT')
            and   name  = 'RELATIONSHIP_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLERECEIPT.RELATIONSHIP_11_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLERECEIPT')
            and   name  = 'RELATIONSHIP_STORE_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLERECEIPT.RELATIONSHIP_STORE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLERECEIPT')
            and   name  = 'RELATIONSHIP_DATE_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLERECEIPT.RELATIONSHIP_DATE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLERECEIPT')
            and   name  = 'RELAGEGROUP_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLERECEIPT.RELAGEGROUP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLERECEIPT')
            and   name  = 'RELGENDER_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLERECEIPT.RELGENDER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLERECEIPT')
            and   name  = 'RELPAYMENT_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLERECEIPT.RELPAYMENT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FACTTABLERECEIPT')
            and   type = 'U')
   drop table FACTTABLERECEIPT
go

/*==============================================================*/
/* Table: DIMAGEGROUP                                           */
/*==============================================================*/
create table DIMAGEGROUP (
   AGEGROUPKEY          numeric              identity,
   AGEGROUP             nvarchar(50)         not null,
   constraint PK_DIMAGEGROUP primary key (AGEGROUPKEY)
)
go

/*==============================================================*/
/* Table: DIMCLIENT                                             */
/*==============================================================*/
create table DIMCLIENT (
   CLIENTKEY            numeric              identity,
   CLIENTID             int                  not null,
   GENDER               char(1)              null,
   DATEOFBIRTH          date	             null,
   AGEGROUP             nvarchar(50)         null,
   PHONE                varchar(50)          null,
   EMAIL                varchar(50)          null,
   OCCUPATION           varchar(130)         null,
   JOB_FAMILY           varchar(100)         null,
   constraint PK_DIMCLIENT primary key (CLIENTKEY)
)
go

/*==============================================================*/
/* Table: DIMDATE                                               */
/*==============================================================*/
create table DIMDATE (
   DATEKEY              int                  not null,
   CALENDARYEAR         int                  null,
   CALENDARSEMESTER     varchar(20)          null,
   DESCRIPTIONSEMESTER  varchar(20)          null,
   QUARTER              int                  null,
   CALENDARQUARTER      varchar(20)          null,
   DESCRIPTIONQUARTER   varchar(20)          null,
   MONTH                varchar(20)          null,
   CALENDARMONTH        int                  null,
   CALENDARYEARMONTH    int                  null,
   DESCRIPTIONMONTH     varchar(20)          null,
   CALENDARDAYMONTH     int                  null,
   WEEK                 int                  null,
   CALENDARWEEK         int                  null,
   DATE                 datetime             null,
   DESCRIPTIONDAY       varchar(20)          null,
   DAYOFWEEK            varchar(15)          null,
   CALENDARDAYOFYEAR    int                  null,
   ISWEEKEND            smallint             null default 0,
   ISHOLIDAY            smallint             null default 0,
   DESCRIPTIONHOLIDAY   varchar(50)          null default 'NA',
   ISWORKDAY            smallint             null default 1,
   SEASON               varchar(20)          null default 'Winter',
   SELLINGSEASON        nvarchar(50)         null,
   constraint PK_DIMDATE primary key (DATEKEY)
)
go

/*==============================================================*/
/* Table: DIMGENDER                                             */
/*==============================================================*/
create table DIMGENDER (
   GENDERKEY            numeric              identity,
   GENDER               char(1)              not null,
   constraint PK_DIMGENDER primary key (GENDERKEY)
)
go

/*==============================================================*/
/* Table: DIMPAYMENT                                            */
/*==============================================================*/
create table DIMPAYMENT (
   PAYMENTTYPEKEY       numeric              identity,
   PAYMENTTYPEID        smallint             not null,
   RECEIPTID            int                  not null,
   NOOFDIFFERENTPAYMENTS int                  not null,
   MAINPAYMENTTYPEID    smallint             not null,
   PAYMENTTYPEDESCRIPTION nvarchar(50)         null,
   constraint PK_DIMPAYMENT primary key (PAYMENTTYPEKEY)
)
go

/*==============================================================*/
/* Table: DIMPRODUCT                                            */
/*==============================================================*/
create table DIMPRODUCT (
   PRODUCTKEY           numeric              identity,
   PRODUCTID            int                  not null,
   PRODUCTDESCRIPTION   nvarchar(200)        null,
   SUBCATEGORYID        char(8)              null,
   SUBCATEGORYDESCRIPTION nvarchar(30)         null,
   CATEGORYID           char(6)              null,
   CATEGORYDESCRIPTION  nvarchar(30)         null,
   SECTIONID            char(4)              null,
   SECTIONDESCRIPTION   nvarchar(30)         null,
   DEPARTMENTID         char(2)              null,
   DEPARTMENTDESCRIPTION nvarchar(30)         null,
   PRODUCTCLASS         char(1)              null,
   PRODUCTSUBCLASS      char(1)              null,
   constraint PK_DIMPRODUCT primary key (PRODUCTKEY)
)
go

/*==============================================================*/
/* Table: DIMSECTION                                            */
/*==============================================================*/
create table DIMSECTION (
   SECTIONKEY           numeric              identity,
   SECTIONID            char(4)              not null,
   SECTIONDESCRIPTION   nvarchar(30)         null,
   DEPARTMENTID         char(2)              null,
   DEPARTMENTDESCRIPTION nvarchar(30)         null,
   constraint PK_DIMSECTION primary key (SECTIONKEY)
)
go

/*==============================================================*/
/* Table: DIMSTORE                                              */
/*==============================================================*/
create table DIMSTORE (
   STOREKEY             numeric              identity,
   STOREID              smallint             not null,
   STOREDESCRIPTION     nvarchar(30)         null,
   POSID                int                  not null,
   POSNR                smallint             null,
   POSCLASS             char(1)              null,
   constraint PK_DIMSTORE primary key (STOREKEY)
)
go

/*==============================================================*/
/* Table: FACTTABLELINEITEM                                     */
/*==============================================================*/
create table FACTTABLELINEITEM (
   LINEITEMKEY          numeric              identity,
   GENDERKEY            numeric              null,
   STOREKEY             numeric              not null,
   DATEKEY              int                  null,
   SECTIONKEY           numeric              not null,
   PRODUCTKEY           numeric              not null,
   AGEGROUPKEY          numeric              null,
   CLIENTKEY            numeric              null,
   RECEIPTID            int                  null,
   DISCOUNTVALUE        int                  null,
   QUANTITY             int                  null,
   TOTALVALUE           int                  null,
   constraint PK_FACTTABLELINEITEM primary key (LINEITEMKEY)
)
go

/*==============================================================*/
/* Index: RELSTORE_FK                                           */
/*==============================================================*/




create nonclustered index RELSTORE_FK on FACTTABLELINEITEM (STOREKEY ASC)
go

/*==============================================================*/
/* Index: RELSECTION_FK                                         */
/*==============================================================*/




create nonclustered index RELSECTION_FK on FACTTABLELINEITEM (SECTIONKEY ASC)
go

/*==============================================================*/
/* Index: RELPRODUCT_FK                                         */
/*==============================================================*/




create nonclustered index RELPRODUCT_FK on FACTTABLELINEITEM (PRODUCTKEY ASC)
go

/*==============================================================*/
/* Index: RELDATE1_FK                                           */
/*==============================================================*/




create nonclustered index RELDATE1_FK on FACTTABLELINEITEM (DATEKEY ASC)
go

/*==============================================================*/
/* Index: RELCLIENT_FK                                          */
/*==============================================================*/




create nonclustered index RELCLIENT_FK on FACTTABLELINEITEM (CLIENTKEY ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_AGEGROUP_FK                              */
/*==============================================================*/




create nonclustered index RELATIONSHIP_AGEGROUP_FK on FACTTABLELINEITEM (AGEGROUPKEY ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_GENDER_FK                                */
/*==============================================================*/




create nonclustered index RELATIONSHIP_GENDER_FK on FACTTABLELINEITEM (GENDERKEY ASC)
go

/*==============================================================*/
/* Table: FACTTABLERECEIPT                                      */
/*==============================================================*/
create table FACTTABLERECEIPT (
   RECEIPTKEY	        numeric              identity,
   CLIENTKEY            numeric              null,
   GENDERKEY            numeric              null,
   PAYMENTTYPEKEY       numeric              not null,
   AGEGROUPKEY          numeric              null,
   DATEKEY              int                  not null,
   STOREKEY             numeric              null,
   RECEIPTID            int                  not null,
   DISCOUNTVALUE        int                  null,
   TOTALVALUE           int                  null,
   TRANSACTIONBEGHOUR   time               	 null,
   TRANSACTIONENDHOUR   time             	 null,
   TRANSACTIONDURATION  int                  null,
   NUMBEROFITEMS        int                  null,
   NUMBEROFPRODUCTS     int                  null,
   constraint PK_FACTTABLERECEIPT primary key (RECEIPTKEY)
)
go

/*==============================================================*/
/* Index: RELPAYMENT_FK                                         */
/*==============================================================*/




create nonclustered index RELPAYMENT_FK on FACTTABLERECEIPT (PAYMENTTYPEKEY ASC)
go

/*==============================================================*/
/* Index: RELGENDER_FK                                          */
/*==============================================================*/




create nonclustered index RELGENDER_FK on FACTTABLERECEIPT (GENDERKEY ASC)
go

/*==============================================================*/
/* Index: RELAGEGROUP_FK                                        */
/*==============================================================*/




create nonclustered index RELAGEGROUP_FK on FACTTABLERECEIPT (AGEGROUPKEY ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_DATE_FK                                  */
/*==============================================================*/




create nonclustered index RELATIONSHIP_DATE_FK on FACTTABLERECEIPT (DATEKEY ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_STORE_FK                                 */
/*==============================================================*/




create nonclustered index RELATIONSHIP_STORE_FK on FACTTABLERECEIPT (STOREKEY ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_11_FK on FACTTABLERECEIPT (CLIENTKEY ASC)
go

alter table FACTTABLELINEITEM
   add constraint FK_FACTTABL_RELATIONS_DIMAGEGR foreign key (AGEGROUPKEY)
      references DIMAGEGROUP (AGEGROUPKEY)
go

alter table FACTTABLELINEITEM
   add constraint FK_FACTTABL_RELATIONS_DIMGENDE foreign key (GENDERKEY)
      references DIMGENDER (GENDERKEY)
go

alter table FACTTABLELINEITEM
   add constraint FK_FACTTABL_RELCLIENT_DIMCLIEN foreign key (CLIENTKEY)
      references DIMCLIENT (CLIENTKEY)
go

alter table FACTTABLELINEITEM
   add constraint FK_FACTTABL_RELDATE1_DIMDATE foreign key (DATEKEY)
      references DIMDATE (DATEKEY)
go

alter table FACTTABLELINEITEM
   add constraint FK_FACTTABL_RELPRODUC_DIMPRODU foreign key (PRODUCTKEY)
      references DIMPRODUCT (PRODUCTKEY)
go

alter table FACTTABLELINEITEM
   add constraint FK_FACTTABL_RELSECTIO_DIMSECTI foreign key (SECTIONKEY)
      references DIMSECTION (SECTIONKEY)
go

alter table FACTTABLELINEITEM
   add constraint FK_FACTTABL_RELSTORE_DIMSTORE foreign key (STOREKEY)
      references DIMSTORE (STOREKEY)
go

alter table FACTTABLERECEIPT
   add constraint FK_FACTTABL_RELAGEGRO_DIMAGEGR foreign key (AGEGROUPKEY)
      references DIMAGEGROUP (AGEGROUPKEY)
go

alter table FACTTABLERECEIPT
   add constraint FK_FACTTABL_RELATIONS_DIMCLIEN foreign key (CLIENTKEY)
      references DIMCLIENT (CLIENTKEY)
go

alter table FACTTABLERECEIPT
   add constraint FK_FACTTABL_RELATIONS_DIMDATE foreign key (DATEKEY)
      references DIMDATE (DATEKEY)
go

alter table FACTTABLERECEIPT
   add constraint FK_FACTTABL_RELATIONS_DIMSTORE foreign key (STOREKEY)
      references DIMSTORE (STOREKEY)
go

alter table FACTTABLERECEIPT
   add constraint FK_FACTTABL_RELGENDER_DIMGENDE foreign key (GENDERKEY)
      references DIMGENDER (GENDERKEY)
go

alter table FACTTABLERECEIPT
   add constraint FK_FACTTABL_RELPAYMEN_DIMPAYME foreign key (PAYMENTTYPEKEY)
      references DIMPAYMENT (PAYMENTTYPEKEY)
go


/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     24/11/2015 21:21:56                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLE') and o.name = 'FK_FACTTABL_RELAGEGRO_DIMAGEGR')
alter table FACTTABLE
   drop constraint FK_FACTTABL_RELAGEGRO_DIMAGEGR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLE') and o.name = 'FK_FACTTABL_RELCLIENT_DIMCLIEN')
alter table FACTTABLE
   drop constraint FK_FACTTABL_RELCLIENT_DIMCLIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLE') and o.name = 'FK_FACTTABL_RELDATE_DIMDATE')
alter table FACTTABLE
   drop constraint FK_FACTTABL_RELDATE_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLE') and o.name = 'FK_FACTTABL_RELGENDER_DIMGENDE')
alter table FACTTABLE
   drop constraint FK_FACTTABL_RELGENDER_DIMGENDE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLE') and o.name = 'FK_FACTTABL_RELPAYMEN_DIMPAYME')
alter table FACTTABLE
   drop constraint FK_FACTTABL_RELPAYMEN_DIMPAYME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLE') and o.name = 'FK_FACTTABL_RELPRODUC_DIMPRODU')
alter table FACTTABLE
   drop constraint FK_FACTTABL_RELPRODUC_DIMPRODU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLE') and o.name = 'FK_FACTTABL_RELRECEIP_DIMRECEI')
alter table FACTTABLE
   drop constraint FK_FACTTABL_RELRECEIP_DIMRECEI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLE') and o.name = 'FK_FACTTABL_RELSECTIO_DIMSECTI')
alter table FACTTABLE
   drop constraint FK_FACTTABL_RELSECTIO_DIMSECTI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTTABLE') and o.name = 'FK_FACTTABL_RELSTORE_DIMSTORE')
alter table FACTTABLE
   drop constraint FK_FACTTABL_RELSTORE_DIMSTORE
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
           where  id = object_id('DIMRECEIPT')
            and   type = 'U')
   drop table DIMRECEIPT
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
           where  id    = object_id('FACTTABLE')
            and   name  = 'RELRECEIPT_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLE.RELRECEIPT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLE')
            and   name  = 'RELPRODUCT_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLE.RELPRODUCT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLE')
            and   name  = 'RELSECTION_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLE.RELSECTION_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLE')
            and   name  = 'RELDATE_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLE.RELDATE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLE')
            and   name  = 'RELSTORE_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLE.RELSTORE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLE')
            and   name  = 'RELCLIENT_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLE.RELCLIENT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLE')
            and   name  = 'RELAGEGROUP_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLE.RELAGEGROUP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLE')
            and   name  = 'RELGENDER_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLE.RELGENDER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTTABLE')
            and   name  = 'RELPAYMENT_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTTABLE.RELPAYMENT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FACTTABLE')
            and   type = 'U')
   drop table FACTTABLE
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
   DATEOFBIRTH          datetime             null,
   AGEGROUP             nvarchar(50)         null,
   constraint PK_DIMCLIENT primary key (CLIENTKEY)
)
go

/*==============================================================*/
/* Table: DIMDATE                                               */
/*==============================================================*/
create table DIMDATE (
   DATEKEY              numeric              identity,
   DATE                 datetime             not null,
   YEAR                 char(4)              null,
   MONTH                varchar(2)           null,
   MONTHNAME            varchar(9)           null,
   DAYOFYEAR            varchar(3)           null,
   DAYOFMONTH           varchar(2)           null,
   DAYNAME              varchar(9)           null,
   MMYYYY               char(6)              null,
   CALENDARYEAR         char(4)              null,
   CALENDARQUARTER      char(1)              null,
   CALENDARMONTH        varchar(9)           null,
   CALENDARMONTHOFYEAR  varchar(2)           null,
   CALENDARWEEK         varchar(2)           null,
   CALENDARWEEKOFYEAR   varchar(2)           null,
   ISWEEKEND            bit                  null,
   ISWORKDAY            bit                  null,
   ISHOLIDAY            bit                  null,
   ISPROMOTION          bit                  null,
   YEARTODATE           bit                  null,
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
/* Table: DIMRECEIPT                                            */
/*==============================================================*/
create table DIMRECEIPT (
   RECEIPTKEY           numeric              identity,
   RECEIPTID            int                  not null,
   constraint PK_DIMRECEIPT primary key (RECEIPTKEY)
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
/* Table: FACTTABLE                                             */
/*==============================================================*/
create table FACTTABLE (
   LINEITEMKEY          numeric              identity,
   STOREKEY             numeric              not null,
   GENDERKEY            numeric              null,
   PAYMENTTYPEKEY       numeric              not null,
   RECEIPTKEY           numeric              not null,
   AGEGROUPKEY          numeric              null,
   DATEKEY              numeric              not null,
   SECTIONKEY           numeric              not null,
   PRODUCTKEY           numeric              not null,
   CLIENTKEY            numeric              not null,
   ORIGINKEY            varchar(30)          not null,
   TRANSACTIONBEGHOUR   datetime             null,
   TRANSACTIONENDHOUR   datetime             null,
   TRANSACTIONDURATION  varchar(8)           null,
   DISCOUNTVALUE        int                  null,
   TOTALPAYED           int                  null,
   QUANTITY             int                  null,
   TOTALVALUE           smallint             null,
   constraint PK_FACTTABLE primary key (LINEITEMKEY)
)
go

/*==============================================================*/
/* Index: RELPAYMENT_FK                                         */
/*==============================================================*/




create nonclustered index RELPAYMENT_FK on FACTTABLE (PAYMENTTYPEKEY ASC)
go

/*==============================================================*/
/* Index: RELGENDER_FK                                          */
/*==============================================================*/




create nonclustered index RELGENDER_FK on FACTTABLE (GENDERKEY ASC)
go

/*==============================================================*/
/* Index: RELAGEGROUP_FK                                        */
/*==============================================================*/




create nonclustered index RELAGEGROUP_FK on FACTTABLE (AGEGROUPKEY ASC)
go

/*==============================================================*/
/* Index: RELCLIENT_FK                                          */
/*==============================================================*/




create nonclustered index RELCLIENT_FK on FACTTABLE (CLIENTKEY ASC)
go

/*==============================================================*/
/* Index: RELSTORE_FK                                           */
/*==============================================================*/




create nonclustered index RELSTORE_FK on FACTTABLE (STOREKEY ASC)
go

/*==============================================================*/
/* Index: RELDATE_FK                                            */
/*==============================================================*/




create nonclustered index RELDATE_FK on FACTTABLE (DATEKEY ASC)
go

/*==============================================================*/
/* Index: RELSECTION_FK                                         */
/*==============================================================*/




create nonclustered index RELSECTION_FK on FACTTABLE (SECTIONKEY ASC)
go

/*==============================================================*/
/* Index: RELPRODUCT_FK                                         */
/*==============================================================*/




create nonclustered index RELPRODUCT_FK on FACTTABLE (PRODUCTKEY ASC)
go

/*==============================================================*/
/* Index: RELRECEIPT_FK                                         */
/*==============================================================*/




create nonclustered index RELRECEIPT_FK on FACTTABLE (RECEIPTKEY ASC)
go

alter table FACTTABLE
   add constraint FK_FACTTABL_RELAGEGRO_DIMAGEGR foreign key (AGEGROUPKEY)
      references DIMAGEGROUP (AGEGROUPKEY)
go

alter table FACTTABLE
   add constraint FK_FACTTABL_RELCLIENT_DIMCLIEN foreign key (CLIENTKEY)
      references DIMCLIENT (CLIENTKEY)
go

alter table FACTTABLE
   add constraint FK_FACTTABL_RELDATE_DIMDATE foreign key (DATEKEY)
      references DIMDATE (DATEKEY)
go

alter table FACTTABLE
   add constraint FK_FACTTABL_RELGENDER_DIMGENDE foreign key (GENDERKEY)
      references DIMGENDER (GENDERKEY)
go

alter table FACTTABLE
   add constraint FK_FACTTABL_RELPAYMEN_DIMPAYME foreign key (PAYMENTTYPEKEY)
      references DIMPAYMENT (PAYMENTTYPEKEY)
go

alter table FACTTABLE
   add constraint FK_FACTTABL_RELPRODUC_DIMPRODU foreign key (PRODUCTKEY)
      references DIMPRODUCT (PRODUCTKEY)
go

alter table FACTTABLE
   add constraint FK_FACTTABL_RELRECEIP_DIMRECEI foreign key (RECEIPTKEY)
      references DIMRECEIPT (RECEIPTKEY)
go

alter table FACTTABLE
   add constraint FK_FACTTABL_RELSECTIO_DIMSECTI foreign key (SECTIONKEY)
      references DIMSECTION (SECTIONKEY)
go

alter table FACTTABLE
   add constraint FK_FACTTABL_RELSTORE_DIMSTORE foreign key (STOREKEY)
      references DIMSTORE (STOREKEY)
go


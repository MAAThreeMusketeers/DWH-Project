/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     22-10-2015 00:34:46                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CATEGORY') and o.name = 'FK_CATEGORY_SECTION_SECTION')
alter table CATEGORY
   drop constraint FK_CATEGORY_SECTION_SECTION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LINE_ITEM__TL_') and o.name = 'FK_LINE_ITE_PRODUCT_PRODUCT')
alter table LINE_ITEM__TL_
   drop constraint FK_LINE_ITE_PRODUCT_PRODUCT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LINE_ITEM__TL_') and o.name = 'FK_LINE_ITE_RECEIPT_RECEIPT_')
alter table LINE_ITEM__TL_
   drop constraint FK_LINE_ITE_RECEIPT_RECEIPT_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PAYMENT__TP_') and o.name = 'FK_PAYMENT__PAYMENT_RECEIPT_')
alter table PAYMENT__TP_
   drop constraint FK_PAYMENT__PAYMENT_RECEIPT_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PAYMENT__TP_') and o.name = 'FK_PAYMENT__PAYMENTTY_PAYMENT_')
alter table PAYMENT__TP_
   drop constraint FK_PAYMENT__PAYMENTTY_PAYMENT_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('POS') and o.name = 'FK_POS_STORE_STORE')
alter table POS
   drop constraint FK_POS_STORE_STORE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUCT') and o.name = 'FK_PRODUCT_SUBCATEGO_SUBCATEG')
alter table PRODUCT
   drop constraint FK_PRODUCT_SUBCATEGO_SUBCATEG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RECEIPT__T_') and o.name = 'FK_RECEIPT__CLIENT_CLIENT')
alter table RECEIPT__T_
   drop constraint FK_RECEIPT__CLIENT_CLIENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RECEIPT__T_') and o.name = 'FK_RECEIPT__POS_POS')
alter table RECEIPT__T_
   drop constraint FK_RECEIPT__POS_POS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SECTION') and o.name = 'FK_SECTION_DEPARTMEN_DEPARTME')
alter table SECTION
   drop constraint FK_SECTION_DEPARTMEN_DEPARTME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SUBCATEGORY') and o.name = 'FK_SUBCATEG_CATEGORY_CATEGORY')
alter table SUBCATEGORY
   drop constraint FK_SUBCATEG_CATEGORY_CATEGORY
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CATEGORY')
            and   name  = 'SECTION_FK'
            and   indid > 0
            and   indid < 255)
   drop index CATEGORY.SECTION_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CATEGORY')
            and   type = 'U')
   drop table CATEGORY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENT')
            and   type = 'U')
   drop table CLIENT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DEPARTMENT')
            and   type = 'U')
   drop table DEPARTMENT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LINE_ITEM__TL_')
            and   name  = 'PRODUCT_FK'
            and   indid > 0
            and   indid < 255)
   drop index LINE_ITEM__TL_.PRODUCT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LINE_ITEM__TL_')
            and   type = 'U')
   drop table LINE_ITEM__TL_
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PAYMENT_TYPE')
            and   type = 'U')
   drop table PAYMENT_TYPE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PAYMENT__TP_')
            and   name  = 'PAYMENT_TYPE_FK'
            and   indid > 0
            and   indid < 255)
   drop index PAYMENT__TP_.PAYMENT_TYPE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PAYMENT__TP_')
            and   type = 'U')
   drop table PAYMENT__TP_
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('POS')
            and   name  = 'STORE_FK'
            and   indid > 0
            and   indid < 255)
   drop index POS.STORE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('POS')
            and   type = 'U')
   drop table POS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUCT')
            and   name  = 'SUBCATEGORY_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCT.SUBCATEGORY_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRODUCT')
            and   type = 'U')
   drop table PRODUCT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RECEIPT__T_')
            and   name  = 'CLIENT_FK'
            and   indid > 0
            and   indid < 255)
   drop index RECEIPT__T_.CLIENT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RECEIPT__T_')
            and   name  = 'POS_FK'
            and   indid > 0
            and   indid < 255)
   drop index RECEIPT__T_.POS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RECEIPT__T_')
            and   type = 'U')
   drop table RECEIPT__T_
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SECTION')
            and   name  = 'DEPARTMENT_FK'
            and   indid > 0
            and   indid < 255)
   drop index SECTION.DEPARTMENT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SECTION')
            and   type = 'U')
   drop table SECTION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('STORE')
            and   type = 'U')
   drop table STORE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SUBCATEGORY')
            and   name  = 'CATEGORY_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUBCATEGORY.CATEGORY_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SUBCATEGORY')
            and   type = 'U')
   drop table SUBCATEGORY
go

/*==============================================================*/
/* Table: CATEGORY                                              */
/*==============================================================*/
create table CATEGORY (
   DEPARTMENTID         char(2)              not null,
   SECTIONID            char(4)              not null,
   CATEGORYID           char(6)              not null,
   CATEGORYDESCRIPTION  nvarchar(30)         null,
   constraint PK_CATEGORY primary key nonclustered (DEPARTMENTID, SECTIONID, CATEGORYID)
)
go

/*==============================================================*/
/* Index: SECTION_FK                                            */
/*==============================================================*/
create index SECTION_FK on CATEGORY (
DEPARTMENTID ASC,
SECTIONID ASC
)
go

/*==============================================================*/
/* Table: CLIENT                                                */
/*==============================================================*/
create table CLIENT (
   CLIENTID             int                  not null,
   CLIENTCARD           smallint             null,
   GENDER               char(1)              null,
   DATEOFBIRTH          char(10)             null,
   constraint PK_CLIENT primary key nonclustered (CLIENTID)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Indicates if the client has a supermaket card',
   'user', @CurrentUser, 'table', 'CLIENT', 'column', 'CLIENTCARD'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Client gender - M or F',
   'user', @CurrentUser, 'table', 'CLIENT', 'column', 'GENDER'
go

/*==============================================================*/
/* Table: DEPARTMENT                                            */
/*==============================================================*/
create table DEPARTMENT (
   DEPARTMENTID         char(2)              not null,
   DEPARTMENTDESCRIPTION nvarchar(30)         null,
   constraint PK_DEPARTMENT primary key nonclustered (DEPARTMENTID)
)
go

/*==============================================================*/
/* Table: LINE_ITEM__TL_                                        */
/*==============================================================*/
create table LINE_ITEM__TL_ (
   RECEIPTID            int                  not null,
   PRODUCTID            int                  not null,
   QUANTITY             int                  null,
   DISCOUNTVALUE        int                  null,
   TOTALVALUE           smallint             null,
   constraint PK_LINE_ITEM__TL_ primary key (RECEIPTID)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Number of items sold',
   'user', @CurrentUser, 'table', 'LINE_ITEM__TL_', 'column', 'QUANTITY'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Total discount value',
   'user', @CurrentUser, 'table', 'LINE_ITEM__TL_', 'column', 'DISCOUNTVALUE'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Total payment value',
   'user', @CurrentUser, 'table', 'LINE_ITEM__TL_', 'column', 'TOTALVALUE'
go

/*==============================================================*/
/* Index: PRODUCT_FK                                            */
/*==============================================================*/
create index PRODUCT_FK on LINE_ITEM__TL_ (
PRODUCTID ASC
)
go

/*==============================================================*/
/* Table: PAYMENT_TYPE                                          */
/*==============================================================*/
create table PAYMENT_TYPE (
   PAYMENTTYPEID        smallint             not null,
   PAYMENTTYPEDESCRIPTION nvarchar(50)         null,
   constraint PK_PAYMENT_TYPE primary key nonclustered (PAYMENTTYPEID)
)
go

/*==============================================================*/
/* Table: PAYMENT__TP_                                          */
/*==============================================================*/
create table PAYMENT__TP_ (
   RECEIPTID            int                  not null,
   PAYMENTTYPEID        smallint             not null,
   TOTALVALUE           smallint             null,
   constraint PK_PAYMENT__TP_ primary key (RECEIPTID)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Total payment value',
   'user', @CurrentUser, 'table', 'PAYMENT__TP_', 'column', 'TOTALVALUE'
go

/*==============================================================*/
/* Index: PAYMENT_TYPE_FK                                       */
/*==============================================================*/
create index PAYMENT_TYPE_FK on PAYMENT__TP_ (
PAYMENTTYPEID ASC
)
go

/*==============================================================*/
/* Table: POS                                                   */
/*==============================================================*/
create table POS (
   STOREID              smallint             not null,
   POSNR                smallint             null,
   POSCLASS             char(1)              null,
   POSID                int                  not null,
   constraint PK_POS primary key nonclustered (STOREID, POSID)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ordinal number of POS in the Store',
   'user', @CurrentUser, 'table', 'POS', 'column', 'POSNR'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'POS Classification (Context)',
   'user', @CurrentUser, 'table', 'POS', 'column', 'POSCLASS'
go

/*==============================================================*/
/* Index: STORE_FK                                              */
/*==============================================================*/
create index STORE_FK on POS (
STOREID ASC
)
go

/*==============================================================*/
/* Table: PRODUCT                                               */
/*==============================================================*/
create table PRODUCT (
   PRODUCTID            int                  not null,
   PRODUCTDESCRIPTION   nvarchar(30)         null,
   PRODUCTCLASS         char(1)              null,
   PRODUCTSUBCLASS      char(1)              null,
   DEPARTMENTID         char(2)              not null,
   SECTIONID            char(4)              not null,
   CATEGORYID           char(6)              not null,
   SUBCATEGORYID        char(8)              not null,
   constraint PK_PRODUCT primary key nonclustered (PRODUCTID)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Product classification',
   'user', @CurrentUser, 'table', 'PRODUCT', 'column', 'PRODUCTCLASS'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Product subClassification',
   'user', @CurrentUser, 'table', 'PRODUCT', 'column', 'PRODUCTSUBCLASS'
go

/*==============================================================*/
/* Index: SUBCATEGORY_FK                                        */
/*==============================================================*/
create index SUBCATEGORY_FK on PRODUCT (
DEPARTMENTID ASC,
SECTIONID ASC,
CATEGORYID ASC,
SUBCATEGORYID ASC
)
go

/*==============================================================*/
/* Table: RECEIPT__T_                                           */
/*==============================================================*/
create table RECEIPT__T_ (
   STOREID              smallint             not null,
   DATEOFSALE           varchar(10)          null,
   CLIENTID             int                  not null,
   RECEIPTID            int                  not null,
   POSID                int                  not null,
   TRANSACTIONBEGHOUR   varchar(8)           null,
   TRANSACTIONENDHOUR   varchar(8)           null,
   DISCOUNTVALUE        int                  null,
   TOTALPAYED           int                  null,
   constraint PK_RECEIPT__T_ primary key nonclustered (RECEIPTID)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Transaction beginning hour (hh:mm:ss)',
   'user', @CurrentUser, 'table', 'RECEIPT__T_', 'column', 'TRANSACTIONBEGHOUR'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Transaction end hour (hh:mm:ss)',
   'user', @CurrentUser, 'table', 'RECEIPT__T_', 'column', 'TRANSACTIONENDHOUR'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Total discount value',
   'user', @CurrentUser, 'table', 'RECEIPT__T_', 'column', 'DISCOUNTVALUE'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Total payed value including VAT',
   'user', @CurrentUser, 'table', 'RECEIPT__T_', 'column', 'TOTALPAYED'
go

/*==============================================================*/
/* Index: POS_FK                                                */
/*==============================================================*/
create index POS_FK on RECEIPT__T_ (
STOREID ASC,
POSID ASC
)
go

/*==============================================================*/
/* Index: CLIENT_FK                                             */
/*==============================================================*/
create index CLIENT_FK on RECEIPT__T_ (
CLIENTID ASC
)
go

/*==============================================================*/
/* Table: SECTION                                               */
/*==============================================================*/
create table SECTION (
   DEPARTMENTID         char(2)              not null,
   SECTIONID            char(4)              not null,
   SECTIONDESCRIPTION   nvarchar(30)         null,
   constraint PK_SECTION primary key nonclustered (DEPARTMENTID, SECTIONID)
)
go

/*==============================================================*/
/* Index: DEPARTMENT_FK                                         */
/*==============================================================*/
create index DEPARTMENT_FK on SECTION (
DEPARTMENTID ASC
)
go

/*==============================================================*/
/* Table: STORE                                                 */
/*==============================================================*/
create table STORE (
   STOREID              smallint             not null,
   STOREDESCRIPTION     nvarchar(30)         null,
   constraint PK_STORE primary key nonclustered (STOREID)
)
go

/*==============================================================*/
/* Table: SUBCATEGORY                                           */
/*==============================================================*/
create table SUBCATEGORY (
   DEPARTMENTID         char(2)              not null,
   SECTIONID            char(4)              not null,
   CATEGORYID           char(6)              not null,
   SUBCATEGORYID        char(8)              not null,
   SUBCATEGORYDECRIPTION nvarchar(30)         null,
   constraint PK_SUBCATEGORY primary key nonclustered (DEPARTMENTID, SECTIONID, CATEGORYID, SUBCATEGORYID)
)
go

/*==============================================================*/
/* Index: CATEGORY_FK                                           */
/*==============================================================*/
create index CATEGORY_FK on SUBCATEGORY (
DEPARTMENTID ASC,
SECTIONID ASC,
CATEGORYID ASC
)
go

alter table CATEGORY
   add constraint FK_CATEGORY_SECTION_SECTION foreign key (DEPARTMENTID, SECTIONID)
      references SECTION (DEPARTMENTID, SECTIONID)
go

alter table LINE_ITEM__TL_
   add constraint FK_LINE_ITE_PRODUCT_PRODUCT foreign key (PRODUCTID)
      references PRODUCT (PRODUCTID)
go

alter table LINE_ITEM__TL_
   add constraint FK_LINE_ITE_RECEIPT_RECEIPT_ foreign key (RECEIPTID)
      references RECEIPT__T_ (RECEIPTID)
go

alter table PAYMENT__TP_
   add constraint FK_PAYMENT__PAYMENT_RECEIPT_ foreign key (RECEIPTID)
      references RECEIPT__T_ (RECEIPTID)
go

alter table PAYMENT__TP_
   add constraint FK_PAYMENT__PAYMENTTY_PAYMENT_ foreign key (PAYMENTTYPEID)
      references PAYMENT_TYPE (PAYMENTTYPEID)
go

alter table POS
   add constraint FK_POS_STORE_STORE foreign key (STOREID)
      references STORE (STOREID)
go

alter table PRODUCT
   add constraint FK_PRODUCT_SUBCATEGO_SUBCATEG foreign key (DEPARTMENTID, SECTIONID, CATEGORYID, SUBCATEGORYID)
      references SUBCATEGORY (DEPARTMENTID, SECTIONID, CATEGORYID, SUBCATEGORYID)
go

alter table RECEIPT__T_
   add constraint FK_RECEIPT__CLIENT_CLIENT foreign key (CLIENTID)
      references CLIENT (CLIENTID)
go

alter table RECEIPT__T_
   add constraint FK_RECEIPT__POS_POS foreign key (STOREID, POSID)
      references POS (STOREID, POSID)
go

alter table SECTION
   add constraint FK_SECTION_DEPARTMEN_DEPARTME foreign key (DEPARTMENTID)
      references DEPARTMENT (DEPARTMENTID)
go

alter table SUBCATEGORY
   add constraint FK_SUBCATEG_CATEGORY_CATEGORY foreign key (DEPARTMENTID, SECTIONID, CATEGORYID)
      references CATEGORY (DEPARTMENTID, SECTIONID, CATEGORYID)
go


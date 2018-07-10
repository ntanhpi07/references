CREATE FUNCTION [dbo].[String_Split]
(
    @Text VARCHAR(MAX),
    @Delimiter VARCHAR(100),
    @Index INT
)
RETURNS VARCHAR(MAX)
AS BEGIN
    DECLARE @A TABLE (ID INT IDENTITY, V VARCHAR(MAX));
    DECLARE @R VARCHAR(MAX);
    WITH CTE AS
    (
    SELECT 0 A, 1 B
    UNION ALL
    SELECT B, CONVERT(INT,CHARINDEX(@Delimiter, @Text, B) + LEN(@Delimiter))
    FROM CTE
    WHERE B > A
    )
    INSERT @A(V)
    SELECT SUBSTRING(@Text,A,CASE WHEN B > LEN(@Delimiter) THEN B-A-LEN(@Delimiter) ELSE LEN(@Text) - A + 1 END) VALUE      
    FROM CTE WHERE A >0

    SELECT      @R
    =           V
    FROM        @A
    WHERE       ID = @Index + 1
    RETURN      @R

END;
GO
CREATE TABLE "aadb approvers" 
     (
      Name VARCHAR(25) ,
      Location VARCHAR(8) ,
      "Phone Number" VARCHAR(16) ,
      "Role Group Description" VARCHAR(41) ,
      "Role" VARCHAR(15) ,
      "Role Description" VARCHAR(60) ,
      "Role Entitlement Description" VARCHAR(28) ,
      "Entitlement Type Description" VARCHAR(28) ,
      "Cost Ctr" VARCHAR(8) ,
      "Person Source" VARCHAR(13) ,
      "Person ID" VARCHAR(9) ,
      Status VARCHAR(6) )
 ;

CREATE TABLE aadb_app_list 
     (
      racf_user_group VARCHAR(15) ,
      app_list VARCHAR(8000) )
;

CREATE TABLE aadb_cics_approvers_20170801 
     (
      Name VARCHAR(40) ,
      Location VARCHAR(4) ,
      "Phone Number" VARCHAR(40) ,
      "Role Group Description" VARCHAR(80) ,
      "Role" VARCHAR(15) ,
      "Role Description" VARCHAR(80) ,
      "Role Entitlement Description" VARCHAR(1) ,
      "Entitlement Type Description" VARCHAR(1) ,
      "Cost Ctr" INTEGER,
      "Person Source" VARCHAR(2) ,
      "Person ID" INTEGER,
      Status VARCHAR(1) )
 ;

CREATE TABLE aadb_own_list 
     (
      racf_user_group VARCHAR(15) ,
      own_list VARCHAR(8000) )
;

CREATE TABLE aadb_racf_roles_a 
     (
      person_source VARCHAR(2) ,
      person_id VARCHAR(6) ,
      person_full_name VARCHAR(40) ,
      "role" VARCHAR(40) ,
      role_desc VARCHAR(80) )
 ;

CREATE TABLE aadb_racf_roles_o 
     (
      person_source VARCHAR(2) ,
      person_id VARCHAR(6) ,
      person_full_name VARCHAR(24) ,
      "role" VARCHAR(15) ,
      role_desc VARCHAR(60) )
 ;

CREATE TABLE ADGrp_Ctrx_IconAccess 
     (
      App_Name VARCHAR(53) ,
      "ADGrp_Element(s)" VARCHAR(67) ,
      Citrix_Region VARCHAR(50) ,
      Citrix_AD_Domain VARCHAR(50) ,
      ADGrp_Structure VARCHAR(300) ,
      "ADGrp_Node?" VARCHAR(50) ,
      RemoveCORP_from_end_of_string VARCHAR(67) ,
      "In_AD_Master?" VARCHAR(50) ,
      Unique_App_Cnt INTEGER,
      Unique_ADGrp_Cnt INTEGER)
 ;

CREATE TABLE ADGrp_Owner 
     (
      ConfirmedGrp_Key VARCHAR(84) ,
      CN VARCHAR(70) ,
      GROUPDN VARCHAR(136) ,
      ADGrp_SubCat_Confirmed VARCHAR(108) ,
      ADGrp_ConfirmationSrc VARCHAR(50) ,
      AD_Domain VARCHAR(50) )
 ;

CREATE TABLE ADI_common 
     (
      GroupName VARCHAR(107) ,
      AccountName VARCHAR(207) ,
      Description VARCHAR(500) ,
      CustomAttrib1 VARCHAR(63) ,
      PersonSource VARCHAR(20) ,
      PersonID VARCHAR(100) ,
      FirstName VARCHAR(100) ,
      LastName VARCHAR(100) ,
      EmailAddress VARCHAR(100) ,
      AccountStatus VARCHAR(8) )
 ;

CREATE TABLE ADI_common_2018 
     (
      GroupName VARCHAR(109) ,
      AccountName VARCHAR(49) ,
      Description VARCHAR(1000) ,
      CustomAttrib1 VARCHAR(65) ,
      CustomAttrib2 VARCHAR(40) ,
      PersonSource VARCHAR(256) ,
      PersonID VARCHAR(256) ,
      FirstName VARCHAR(100) ,
      LastName VARCHAR(100) ,
      EmailAddress VARCHAR(100) ,
      AccountStatus VARCHAR(8) )
 ;

CREATE TABLE ADI_common_2018_1 
     (
      GroupName VARCHAR(107) ,
      AccountName VARCHAR(207) ,
      Description VARCHAR(500) ,
      CustomAttrib1 VARCHAR(63) ,
      PersonSource VARCHAR(256) ,
      PersonID VARCHAR(100) ,
      FirstName VARCHAR(100) ,
      LastName VARCHAR(100) ,
      EmailAddress VARCHAR(100) ,
      AccountStatus VARCHAR(8) )
 ;

CREATE TABLE adi_common_final_1 
     (
      GroupName VARCHAR(107) ,
      AccountName VARCHAR(47) ,
      Description VARCHAR(500) ,
      CustomAttrib1 VARCHAR(63) ,
      PersonSource VARCHAR(20) ,
      PersonID VARCHAR(100) ,
      FirstName VARCHAR(100) ,
      LastName VARCHAR(100) ,
      EmailAddress VARCHAR(100) ,
      AccountStatus VARCHAR(8) )
 ;

CREATE TABLE ADI_Common_Pre 
     (
      GroupName VARCHAR(107) ,
      AccountName VARCHAR(47) ,
      Description VARCHAR(500) ,
      CustomAttrib1 VARCHAR(63) ,
      PersonSource VARCHAR(20) ,
      PersonID VARCHAR(100) ,
      FirstName VARCHAR(100) ,
      LastName VARCHAR(100) ,
      EmailAddress VARCHAR(100) ,
      AccountStatus VARCHAR(8) )
 ;

CREATE TABLE ADI_process_2018 
     (
      GroupName VARCHAR(109) ,
      AccountName VARCHAR(49) ,
      Description VARCHAR(500) ,
      CustomAttrib1 VARCHAR(65) ,
      CustomAttrib2 VARCHAR(40) ,
      PersonSource VARCHAR(256) ,
      PersonID VARCHAR(256) ,
      FirstName VARCHAR(100) ,
      LastName VARCHAR(100) ,
      EmailAddress VARCHAR(100) ,
      AccountStatus VARCHAR(8) )
 ;

CREATE TABLE ad_account_2017_08 
     (
      ROW_GUID VARCHAR(1024) ,
      ROW_GUID_BYTE varbinary(16),
      UPDATE_GUARD INTEGER,
      AS_OF_TMS date,
      AS_AT_TMS date,
      PERSON_EMPLOYEE_NUMBER VARCHAR(100) ,
      USERID VARCHAR(40) ,
      LAST_NAME VARCHAR(60) ,
      FIRST_NAME VARCHAR(60) ,
      EMAIL_ADDRESS VARCHAR(100) ,
      TITLE_1 VARCHAR(60) ,
      EMPLOYEE_TYPE VARCHAR(20) ,
      MANAGER_ID VARCHAR(500) ,
      DISTINGUISHED_NAME VARCHAR(500) ,
      DISPLAY_NAME VARCHAR(100) ,
      DEPARTMENT_NAME VARCHAR(100) ,
      PWDLASTSET VARCHAR(40) ,
      WHENCHANGED VARCHAR(40) ,
      WHENCREATED VARCHAR(40) ,
      USERCANNOTCHANGEPWD VARCHAR(20) ,
      PWDNOTREQUIRED VARCHAR(20) ,
      PWDNEVEREXPIRES VARCHAR(20) ,
      EXTENSIONATTR2 VARCHAR(40) ,
      COMMENT_1 VARCHAR(80) ,
      BUSINESSCATEGORY VARCHAR(80) ,
      DELIVERYOFFICE VARCHAR(80) ,
      DELEGATE VARCHAR(200) ,
      DESCRIPTION VARCHAR(200) ,
      ENABLED_1 VARCHAR(20) ,
      CREATE_TMS Date,
      UPDATE_TMS Date)
 ;

CREATE TABLE ad_account_201806 
     (
      DISTINGUISHED_NAME VARCHAR(500) ,
      DISPLAY_NAME VARCHAR(100) ,
      USERID VARCHAR(40) ,
      PERSON_EMPLOYEE_NUMBER VARCHAR(100) ,
      EMPLOYEE_TYPE VARCHAR(35) ,
      DEPARTMENT_NAME VARCHAR(100) ,
      EMAIL_ADDRESS VARCHAR(100) ,
      EXTENSIONATTR2 VARCHAR(40) ,
      "COMMENT" VARCHAR(8000) ,
      BUSINESSCATEGORY VARCHAR(80) ,
      DELIVERYOFFICE VARCHAR(800) ,
      DELEGATE VARCHAR(200) ,
      DESCRIPTION VARCHAR(300) ,
      "ENABLED" VARCHAR(20) ,
      PWDNEVEREXPIRES VARCHAR(20) ,
      PWDNOTREQUIRED VARCHAR(20) ,
      USERCANNOTCHANGEPWD VARCHAR(20) ,
      WHENCREATED VARCHAR(40) ,
      WHENCHANGED VARCHAR(40) ,
      PWDLASTSET VARCHAR(40) )
;

CREATE TABLE ad_account_7 
     (
      DISTINGUISHED_NAME VARCHAR(500) ,
      DISPLAY_NAME VARCHAR(100) ,
      USERID VARCHAR(40) ,
      PERSON_EMPLOYEE_NUMBER VARCHAR(100) ,
      EMPLOYEE_TYPE VARCHAR(20) ,
      DEPARTMENT_NAME VARCHAR(100) ,
      EMAIL_ADDRESS VARCHAR(100) ,
      EXTENSIONATTR2 VARCHAR(40) ,
      "COMMENT" VARCHAR(8000) ,
      BUSINESSCATEGORY VARCHAR(80) ,
      DELIVERYOFFICE VARCHAR(800) ,
      DELEGATE VARCHAR(200) ,
      DESCRIPTION VARCHAR(200) ,
      "ENABLED" VARCHAR(20) ,
      PWDNEVEREXPIRES VARCHAR(20) ,
      PWDNOTREQUIRED VARCHAR(20) ,
      USERCANNOTCHANGEPWD VARCHAR(20) ,
      WHENCREATED VARCHAR(40) ,
      WHENCHANGED VARCHAR(40) ,
      PWDLASTSET VARCHAR(40) )
;

CREATE TABLE ad_account_curnx 
     (
      DISTINGUISHED_NAME VARCHAR(500) ,
      DISPLAY_NAME VARCHAR(100) ,
      USERID VARCHAR(40) ,
      PERSON_EMPLOYEE_NUMBER VARCHAR(100) ,
      EMPLOYEE_TYPE VARCHAR(80) ,
      DEPARTMENT_NAME VARCHAR(100) ,
      EMAIL_ADDRESS VARCHAR(100) ,
      EXTENSIONATTR2 VARCHAR(40) ,
      "COMMENT" VARCHAR(8000) ,
      BUSINESSCATEGORY VARCHAR(80) ,
      DELIVERYOFFICE VARCHAR(800) ,
      DELEGATE VARCHAR(200) ,
      DESCRIPTION VARCHAR(1000) ,
      "ENABLED" VARCHAR(20) ,
      PWDNEVEREXPIRES VARCHAR(20) ,
      PWDNOTREQUIRED VARCHAR(20) ,
      USERCANNOTCHANGEPWD VARCHAR(20) ,
      WHENCREATED VARCHAR(40) ,
      WHENCHANGED VARCHAR(40) ,
      PWDLASTSET VARCHAR(40) )
 ;

CREATE TABLE ad_account_dmz 
     (
      DISTINGUISHED_NAME VARCHAR(500) ,
      DISPLAY_NAME VARCHAR(100) ,
      USERID VARCHAR(40) ,
      PERSON_EMPLOYEE_NUMBER VARCHAR(100) ,
      EMPLOYEE_TYPE VARCHAR(80) ,
      DEPARTMENT_NAME VARCHAR(100) ,
      EMAIL_ADDRESS VARCHAR(100) ,
      EXTENSIONATTR2 VARCHAR(40) ,
      "COMMENT" VARCHAR(8000) ,
      BUSINESSCATEGORY VARCHAR(80) ,
      DELIVERYOFFICE VARCHAR(800) ,
      DELEGATE VARCHAR(200) ,
      DESCRIPTION VARCHAR(1000) ,
      "ENABLED" VARCHAR(20) ,
      PWDNEVEREXPIRES VARCHAR(20) ,
      PWDNOTREQUIRED VARCHAR(20) ,
      USERCANNOTCHANGEPWD VARCHAR(20) ,
      WHENCREATED VARCHAR(40) ,
      WHENCHANGED VARCHAR(40) ,
      PWDLASTSET VARCHAR(40) )
 ;

CREATE TABLE ad_account_ifs 
     (
      DISTINGUISHED_NAME VARCHAR(500) ,
      DISPLAY_NAME VARCHAR(100) ,
      USERID VARCHAR(40) ,
      PERSON_EMPLOYEE_NUMBER VARCHAR(100) ,
      EMPLOYEE_TYPE VARCHAR(20) ,
      DEPARTMENT_NAME VARCHAR(100) ,
      EMAIL_ADDRESS VARCHAR(100) ,
      EXTENSIONATTR2 VARCHAR(40) ,
      "COMMENT" VARCHAR(8000) ,
      BUSINESSCATEGORY VARCHAR(80) ,
      DELIVERYOFFICE VARCHAR(800) ,
      DELEGATE VARCHAR(200) ,
      DESCRIPTION VARCHAR(1000) ,
      "ENABLED" VARCHAR(20) ,
      PWDNEVEREXPIRES VARCHAR(20) ,
      PWDNOTREQUIRED VARCHAR(20) ,
      USERCANNOTCHANGEPWD VARCHAR(20) ,
      WHENCREATED VARCHAR(40) ,
      WHENCHANGED VARCHAR(40) ,
      PWDLASTSET VARCHAR(40) )
 ;

CREATE TABLE ad_account_imsw 
     (
      DISTINGUISHED_NAME VARCHAR(500) ,
      DISPLAY_NAME VARCHAR(100) ,
      USERID VARCHAR(40) ,
      PERSON_EMPLOYEE_NUMBER VARCHAR(100) ,
      EMPLOYEE_TYPE VARCHAR(80) ,
      DEPARTMENT_NAME VARCHAR(100) ,
      EMAIL_ADDRESS VARCHAR(100) ,
      EXTENSIONATTR2 VARCHAR(40) ,
      "COMMENT" VARCHAR(8000) ,
      BUSINESSCATEGORY VARCHAR(80) ,
      DELIVERYOFFICE VARCHAR(800) ,
      DELEGATE VARCHAR(200) ,
      DESCRIPTION VARCHAR(1000) ,
      "ENABLED" VARCHAR(20) ,
      PWDNEVEREXPIRES VARCHAR(20) ,
      PWDNOTREQUIRED VARCHAR(20) ,
      USERCANNOTCHANGEPWD VARCHAR(20) ,
      WHENCREATED VARCHAR(40) ,
      WHENCHANGED VARCHAR(40) ,
      PWDLASTSET VARCHAR(40) )
 ;

CREATE TABLE ad_account_joey 
     (
      DISTINGUISHED_NAME VARCHAR(500) ,
      DISPLAY_NAME VARCHAR(100) ,
      USERID VARCHAR(40) ,
      PERSON_EMPLOYEE_NUMBER VARCHAR(100) ,
      EMPLOYEE_TYPE VARCHAR(80) ,
      DEPARTMENT_NAME VARCHAR(100) ,
      EMAIL_ADDRESS VARCHAR(100) ,
      EXTENSIONATTR2 VARCHAR(40) ,
      "COMMENT" VARCHAR(8000) ,
      BUSINESSCATEGORY VARCHAR(80) ,
      DELIVERYOFFICE VARCHAR(800) ,
      DELEGATE VARCHAR(200) ,
      DESCRIPTION VARCHAR(1000) ,
      "ENABLED" VARCHAR(20) ,
      PWDNEVEREXPIRES VARCHAR(20) ,
      PWDNOTREQUIRED VARCHAR(20) ,
      USERCANNOTCHANGEPWD VARCHAR(20) ,
      WHENCREATED VARCHAR(40) ,
      WHENCHANGED VARCHAR(40) ,
      PWDLASTSET VARCHAR(40) )
 ;

CREATE TABLE ad_group_2017_08 
     (
      ROW_GUID VARCHAR(1024) ,
      ROW_GUID_BYTE varbinary(16),
      UPDATE_GUARD INTEGER,
      AS_OF_TMS date,
      AS_AT_TMS date,
      GROUPDN VARCHAR(500) ,
      CN VARCHAR(100) ,
      SAMACCOUNTNAME VARCHAR(100) ,
      OBJECTCATEGORY VARCHAR(60) ,
      MANAGEDBY VARCHAR(500) ,
      NAME VARCHAR(100) ,
      INFO VARCHAR(500) ,
      ADMIN_1 VARCHAR(20) ,
      DISPLAYNAME VARCHAR(100) ,
      MAIL VARCHAR(100) ,
      MAILNICKNAME VARCHAR(60) ,
      DESCRIPTION VARCHAR(500) ,
      TYPE_1 VARCHAR(40) ,
      SCOPE_1 VARCHAR(40) ,
      WHENCREATED VARCHAR(40) ,
      WHENCHANGED VARCHAR(40) ,
      CREATE_TMS Date,
      UPDATE_TMS Date,
      EMPTY VARCHAR(10) ,
      CONTAINER1 VARCHAR(40) ,
      CONTAINER2 VARCHAR(40) ,
      CONTAINER3 VARCHAR(40) ,
      CONTAINER4 VARCHAR(40) ,
      CONTAINER5 VARCHAR(40) ,
      CONTAINER6 VARCHAR(40) ,
      CONTAINER7 VARCHAR(40) ,
      CONTAINER8 VARCHAR(40) ,
      ASISMEMBERCOUNT VARCHAR(10) )
 ;

CREATE TABLE ad_group_201806 
     (
      GROUPDN VARCHAR(500) ,
      EMPTY VARCHAR(10) ,
      ASISMEMBERCOUNT VARCHAR(10) ,
      CONTAINER1 VARCHAR(40) ,
      CONTAINER2 VARCHAR(40) ,
      CONTAINER3 VARCHAR(40) ,
      CONTAINER4 VARCHAR(40) ,
      CONTAINER5 VARCHAR(40) ,
      CONTAINER6 VARCHAR(40) ,
      CONTAINER7 VARCHAR(40) ,
      CONTAINER8 VARCHAR(40) ,
      NAME VARCHAR(100) ,
      SAMACCOUNTNAME VARCHAR(100) ,
      "TYPE" VARCHAR(40) ,
      SCOPE VARCHAR(40) ,
      MANAGEDBY VARCHAR(500) ,
      INFO VARCHAR(1000) ,
      DESCRIPTION VARCHAR(1000) ,
      WHENCREATED VARCHAR(40) ,
      WHENCHANGED VARCHAR(40) )
;

CREATE TABLE ad_group_7 
     (
      GROUPDN VARCHAR(500) ,
      EMPTY VARCHAR(10) ,
      ASISMEMBERCOUNT VARCHAR(10) ,
      CONTAINER1 VARCHAR(40) ,
      CONTAINER2 VARCHAR(40) ,
      CONTAINER3 VARCHAR(40) ,
      CONTAINER4 VARCHAR(40) ,
      CONTAINER5 VARCHAR(40) ,
      CONTAINER6 VARCHAR(40) ,
      CONTAINER7 VARCHAR(40) ,
      CONTAINER8 VARCHAR(40) ,
      NAME VARCHAR(100) ,
      SAMACCOUNTNAME VARCHAR(100) ,
      "TYPE" VARCHAR(40) ,
      SCOPE VARCHAR(40) ,
      MANAGEDBY VARCHAR(500) ,
      INFO VARCHAR(500) ,
      DESCRIPTION VARCHAR(500) ,
      WHENCREATED VARCHAR(40) ,
      WHENCHANGED VARCHAR(40) )
;

CREATE TABLE ad_group_curnx 
     (
      GROUPDN VARCHAR(500) ,
      EMPTY VARCHAR(10) ,
      ASISMEMBERCOUNT VARCHAR(10) ,
      CONTAINER1 VARCHAR(40) ,
      CONTAINER2 VARCHAR(40) ,
      CONTAINER3 VARCHAR(40) ,
      CONTAINER4 VARCHAR(40) ,
      CONTAINER5 VARCHAR(40) ,
      CONTAINER6 VARCHAR(40) ,
      CONTAINER7 VARCHAR(40) ,
      CONTAINER8 VARCHAR(40) ,
      NAME VARCHAR(100) ,
      SAMACCOUNTNAME VARCHAR(100) ,
      "TYPE" VARCHAR(40) ,
      SCOPE VARCHAR(40) ,
      MANAGEDBY VARCHAR(500) ,
      INFO VARCHAR(1000) ,
      DESCRIPTION VARCHAR(1000) ,
      WHENCREATED VARCHAR(40) ,
      WHENCHANGED VARCHAR(40) )
 ;

CREATE TABLE ad_group_dmz 
     (
      GROUPDN VARCHAR(500) ,
      EMPTY VARCHAR(10) ,
      ASISMEMBERCOUNT VARCHAR(10) ,
      CONTAINER1 VARCHAR(40) ,
      CONTAINER2 VARCHAR(40) ,
      CONTAINER3 VARCHAR(40) ,
      CONTAINER4 VARCHAR(40) ,
      CONTAINER5 VARCHAR(40) ,
      CONTAINER6 VARCHAR(40) ,
      CONTAINER7 VARCHAR(40) ,
      CONTAINER8 VARCHAR(40) ,
      NAME VARCHAR(100) ,
      SAMACCOUNTNAME VARCHAR(100) ,
      "TYPE" VARCHAR(40) ,
      SCOPE VARCHAR(40) ,
      MANAGEDBY VARCHAR(500) ,
      INFO VARCHAR(1000) ,
      DESCRIPTION VARCHAR(1000) ,
      WHENCREATED VARCHAR(40) ,
      WHENCHANGED VARCHAR(40) )
 ;

CREATE TABLE ad_group_flat_2017_08 
     (
      parent VARCHAR(500) ,
      child VARCHAR(500) ,
      level TINYINT,
      path VARCHAR(2000) ,
      apath VARCHAR(2000) )
 ;

CREATE TABLE ad_group_flat_201806 
     (
      parent VARCHAR(500) ,
      child VARCHAR(500) ,
      level TINYINT,
      path VARCHAR(2000) ,
      apath VARCHAR(2000) )
 ;

CREATE TABLE ad_group_flat_7 
     (
      parent VARCHAR(500) ,
      child VARCHAR(500) ,
      level TINYINT,
      path VARCHAR(2000) ,
      apath VARCHAR(2000) )
 ;

CREATE TABLE ad_group_member_201806 
     (
      GROUPDN VARCHAR(500) ,
      CN VARCHAR(400) ,
      MEMBER VARCHAR(500) ,
      userid VARCHAR(200) ,
      objtype VARCHAR(400) )
 ;

CREATE TABLE ad_group_member_6 
     (
      AS_OF_TMS date,
      GROUPDN VARCHAR(500) ,
      CN VARCHAR(40) ,
      MEMBER VARCHAR(500) ,
      OBJTYPE VARCHAR(20) ,
      USERID VARCHAR(40) )
 ;

CREATE TABLE ad_group_member_7 
     (
      GROUPDN VARCHAR(500) ,
      CN VARCHAR(400) ,
      MEMBER VARCHAR(500) ,
      userid VARCHAR(200) ,
      objtype VARCHAR(400) )
 ;

CREATE TABLE ad_group_member_curnx 
     (
      GROUPDN VARCHAR(500) ,
      MEMBER VARCHAR(500) ,
      userid VARCHAR(200) ,
      objtype VARCHAR(400) )
 ;

CREATE TABLE ad_group_member_dmz 
     (
      GROUPDN VARCHAR(500) ,
      CN VARCHAR(400) ,
      MEMBER VARCHAR(500) ,
      userid VARCHAR(200) ,
      objtype VARCHAR(400) )
 ;

CREATE TABLE ad_group_member_flat2 
     (
      group_guid VARCHAR(32) ,
      group_path VARCHAR(500) ,
      OBJTYPE VARCHAR(8) ,
      member_guid VARCHAR(500) ,
      DEPTH TINYINT,
      step_guid VARCHAR(500) )
;

CREATE TABLE ad_group_member_grp 
     (
      group_guid VARCHAR(32) ,
      group_path VARCHAR(500) ,
      OBJTYPE VARCHAR(8) ,
      member_guid VARCHAR(500) )
;

CREATE TABLE ad_group_rollup_2017_08 
     (
      parent VARCHAR(500) ,
      child VARCHAR(500) ,
      level TINYINT,
      path VARCHAR(2000) ,
      apath VARCHAR(2000) )
 ;

CREATE TABLE ad_group_rollup_7 
     (
      parent VARCHAR(500) ,
      child VARCHAR(500) ,
      level TINYINT,
      path VARCHAR(2000) ,
      apath VARCHAR(2000) )
 ;

CREATE TABLE AIW_AppCode 
     (
      SAID VARCHAR(11) ,
      "Application Code" VARCHAR(3) ,
      "Application Name" VARCHAR(65) ,
      "Application Description" VARCHAR(997) ,
      "Application Type" VARCHAR(23) ,
      "Sub Application Type" VARCHAR(23) ,
      "Application Status" VARCHAR(15) ,
      "Is Crown Jewel" VARCHAR(3) ,
      "Business Organization" VARCHAR(42) ,
      "Business EVP" VARCHAR(26) ,
      "Business EVP Email" VARCHAR(32) ,
      "Business Authorizing SVP" VARCHAR(30) ,
      "Business Authorizing SVP Email" VARCHAR(36) ,
      "Business ISO Approver" VARCHAR(31) ,
      "Business ISO Approver Email" VARCHAR(29) ,
      "Business Owner" VARCHAR(31) ,
      "Business Owner Email" VARCHAR(44) ,
      "IT CIO Direct Report" VARCHAR(23) ,
      "IT CIO Direct Report Email" VARCHAR(31) ,
      "IT Senior Manager" VARCHAR(28) ,
      "IT Senior Manager Email" VARCHAR(38) ,
      "IT Authorizing SVP" VARCHAR(25) ,
      "IT Authorizing SVP  Email" VARCHAR(35) ,
      "IT Owner" VARCHAR(28) ,
      "IT Owner Email" VARCHAR(38) ,
      Pa_Lite VARCHAR(13) ,
      "ISRMP Status" VARCHAR(14) ,
      "ISRMP Next Review Date" VARCHAR(19) ,
      "Is Vendor app" VARCHAR(3) ,
      "Access Method" VARCHAR(197) ,
      Atrack VARCHAR(122) ,
      "Legal Enity Code" VARCHAR(5) ,
      "Legal Entity Name" VARCHAR(70) ,
      "Owned/Licensed/External" VARCHAR(10) ,
      "Service ID" VARCHAR(310) ,
      "Created Date" Date,
      "Last Modified Date" Date,
      Portal VARCHAR(4) ,
      "Client Internet Facing" VARCHAR(3) )
 ;

CREATE TABLE AVEKSA_USER_ALL_ACCESS 
     (
      ENTITLED_TYPE VARCHAR(50) ,
      ENTITLEMENT_TYPE VARCHAR(50) ,
      ENTITLEMENT_NAME VARCHAR(520) ,
      ENTITLEMENT_RAW_NAME VARCHAR(520) ,
      ENTITLEMENT_PATH VARCHAR(4000) ,
      DC_NAME VARCHAR(256) ,
      APPLICATION_NAME VARCHAR(512) ,
      APP_DESCRIPTION VARCHAR(512) ,
      ACCOUNT_NAME VARCHAR(256) )
 ;

CREATE TABLE bessusers 
     (
      ClusterID SMALLINT,
      PERSON_GUID VARCHAR(32) ,
      DEPT_NAME VARCHAR(30) ,
      entitlementsinCluster INTEGER,
      hitrate FLOAT,
      hits_to_cluster FLOAT)
;

CREATE TABLE bess_account_resource1_varid 
     (
      varid INTEGER,
      Office VARCHAR(3) ,
      RESOURCENAME VARCHAR(4) ,
      Person_guid INTEGER,
      DEPT_NAME VARCHAR(30) )
;

CREATE TABLE bess_ad_cluster 
     (
      Cluster_id INTEGER,
      ad_guid VARCHAR(32) ,
      Office VARCHAR(3) ,
      DEPT VARCHAR(3) ,
      Office_type VARCHAR(20) ,
      RESOURCENAME VARCHAR(4) )
 ;

CREATE TABLE bess_pca_output 
     (
      OutputRowNum BIGINT,
      OutputColNum BIGINT,
      COVAR FLOAT,
      EIGENVAL FLOAT,
      EIGENVEC FLOAT)
;

CREATE TABLE bess_to_person_priv 
     (
      Office VARCHAR(3) ,
      RESOURCENAME VARCHAR(4) ,
      PERSON_GUID VARCHAR(32) )
;

CREATE TABLE bid_trans 
     (
      Mnem VARCHAR(4) ,
      tran_id VARCHAR(7) )
 ;

CREATE TABLE "cluster membership" 
     (
      GroupNo SMALLINT,
      "Group GUID" VARCHAR(32) ,
      "C1-1" SMALLINT,
      "C1-4" SMALLINT,
      "C1-5" SMALLINT,
      "C1-8" SMALLINT,
      "C1-9" SMALLINT,
      "C1-10" SMALLINT,
      "C1-13" SMALLINT,
      "C1-14" SMALLINT,
      "C1-17" SMALLINT,
      "C1-18" SMALLINT,
      "C1-19" SMALLINT,
      "C1-20" SMALLINT,
      "C1-21" SMALLINT,
      "C1-22" SMALLINT,
      "C1-23" SMALLINT,
      "C1-24" SMALLINT,
      "C1-25" SMALLINT)
 ;

CREATE TABLE cmdb_a21_2017_08 
     (
      "Class Description" VARCHAR(22) ,
      "Configuration Item Number" VARCHAR(32) ,
      "Configuration Item Name" VARCHAR(75) ,
      "Operating Environment" VARCHAR(17) ,
      Status VARCHAR(10) ,
      "CI Description" VARCHAR(2048) ,
      "Application Code" VARCHAR(3) ,
      "Application Type" VARCHAR(14) ,
      SAID VARCHAR(11) ,
      "Crown Jewels" VARCHAR(3) ,
      SSC_RESILIENCY VARCHAR(3) ,
      SSC_LASTRECERTDATE Date,
      "Business Unit" VARCHAR(44) ,
      Owner VARCHAR(34) ,
      "Owner ID" INTEGER,
      "Owner Group" VARCHAR(26) ,
      "Support Group" VARCHAR(31) ,
      "Owner Group Description" VARCHAR(98) ,
      "CI Owner Group Default Person" VARCHAR(28) ,
      "CI Owner Group Default Person ID" VARCHAR(14) ,
      "CI Owner Group Default Primary Email" VARCHAR(37) ,
      "CI Owner Primary Email" VARCHAR(37) ,
      "Business Owner" INTEGER,
      "Business Owner ID" VARCHAR(28) ,
      "Managed By" VARCHAR(3) ,
      "Used By" VARCHAR(3) ,
      "Business Impact" VARCHAR(8) ,
      "Business Impact ID" TINYINT,
      "Impacted CI Class Description" VARCHAR(27) ,
      "Impacted CI Number" VARCHAR(37) ,
      "Impacted CI Name" VARCHAR(75) ,
      "Impacted CI Operating Environment" VARCHAR(17) ,
      "Impacted CI Status" VARCHAR(14) ,
      "Data Center" VARCHAR(3) ,
      "Impacted CI Country" VARCHAR(14) ,
      "Impacted CI Region" VARCHAR(19) ,
      "Impacted CI Location" VARCHAR(25) ,
      "Impacted CI Location Description" VARCHAR(83) ,
      "Impacted CI Virtual" VARCHAR(5) ,
      "Impacted CI Manufacturer" VARCHAR(40) ,
      "Impacted CI Computersystem Name" VARCHAR(40) ,
      "Impacted CI Description" VARCHAR(465) ,
      "Impacted CI Business Impact ID" TINYINT,
      "Impacted CI Business Unit" VARCHAR(28) ,
      "Impacted CI Managed By" VARCHAR(7) ,
      "Impacted CI Owner Group" VARCHAR(29) ,
      "Impacted CI Support Group" VARCHAR(27) ,
      "Network Device Type" VARCHAR(29) ,
      "Storage Device Type" VARCHAR(13) ,
      "Product Name" VARCHAR(116) ,
      "Vendor Name" VARCHAR(22) ,
      "OPERATINGSYSTEM OSNAME" VARCHAR(56) ,
      "OPERATINGSYSTEM OSVERSION" VARCHAR(58) ,
      "OPERATINGSYSTEM KERNELVERSION" VARCHAR(58) )
 ;

CREATE TABLE cmdb_export_2017_08 
     (
      CINUM VARCHAR(80) ,
      CINAME VARCHAR(113) ,
      DESCRIPTION VARCHAR(2000) ,
      STATUS VARCHAR(14) ,
      CLASSIFICATION VARCHAR(27) ,
      CLASSSTRUCTUREID INTEGER,
      ITDCIOPERATINGENV VARCHAR(17) ,
      PERSONID INTEGER,
      BUSINESSOWNERPERSONID INTEGER,
      CCIPERSONGROUP VARCHAR(29) ,
      ITDCISUPPORTGROUP VARCHAR(31) ,
      ITDCIMANAGEDBY VARCHAR(11) ,
      SSCUSEDBY VARCHAR(3) ,
      SSCBUSINESSUNIT VARCHAR(44) ,
      ASSETNUM VARCHAR(7) ,
      CILOCATION VARCHAR(25) ,
      PMCHGCWNUM VARCHAR(8) ,
      PMCCIIMPACT TINYINT,
      CMDBTADDMSCAN VARCHAR(9) ,
      ACTCINUM VARCHAR(142) ,
      EXTERNALREFID VARCHAR(3) ,
      CHANGEDATE VARCHAR(40) ,
      STATUSDATE VARCHAR(40) ,
      APPVERSION VARCHAR(22) ,
      BUILDLEVEL VARCHAR(149) ,
      PRODUCTNAME VARCHAR(149) ,
      PRODUCTVERSION VARCHAR(213) ,
      VENDORNAME VARCHAR(43) ,
      VERSIONSTRING VARCHAR(149) ,
      APPLID VARCHAR(8) ,
      JOBNAME VARCHAR(8) ,
      CICSREGAVAIL VARCHAR(9) ,
      CICSREGVERS TINYINT,
      CICSREGTYPE VARCHAR(4) ,
      NETDEVTYPE VARCHAR(29) ,
      PLANRETDATE VARCHAR(16) ,
      STODEVTYPE VARCHAR(25) ,
      SUPTLVL VARCHAR(6) ,
      ARCHITECTURE VARCHAR(27) ,
      CPUTYPE VARCHAR(59) ,
      FQDN VARCHAR(63) ,
      ISVMIDANLPAR VARCHAR(5) ,
      CSMANUFACTURER VARCHAR(55) ,
      MEMORYSIZE FLOAT,
      CSMODEL VARCHAR(71) ,
      CSNAME VARCHAR(63) ,
      NUMCPUS SMALLINT,
      CSSERIALNUMBER VARCHAR(102) ,
      VIRTUAL VARCHAR(5) ,
      OSBLDLVL VARCHAR(64) ,
      OSNAME VARCHAR(74) ,
      OSVERSION VARCHAR(58) ,
      OSFQDN VARCHAR(36) ,
      OSVERSSTRING VARCHAR(69) ,
      OSKERNELVERS VARCHAR(58) ,
      PPMANUFACTURER VARCHAR(39) ,
      PPMODEL VARCHAR(39) ,
      PPSERIALNUMBER VARCHAR(12) ,
      DOMFILENAME VARCHAR(60) ,
      URL VARCHAR(254) ,
      ORCLDBNAME VARCHAR(29) ,
      ORACLEDBVERS VARCHAR(37) ,
      SQLDBNAME VARCHAR(60) ,
      SQLDBVERS SMALLINT,
      SYBDBNAME VARCHAR(9) ,
      DB2ALIAS TINYINT,
      DB2NAME VARCHAR(8) ,
      DB2PATH TINYINT,
      PORT_NUMBER VARCHAR(26) ,
      PRODUCT_EDITION VARCHAR(18) ,
      "ALIAS" VARCHAR(254) ,
      APPCODE VARCHAR(7) ,
      APPGRP VARCHAR(3) ,
      APPTYPE VARCHAR(19) ,
      SAID VARCHAR(11) ,
      BAPALITE VARCHAR(29) ,
      DBCS VARCHAR(3) ,
      CIRCUIT_ADDR VARCHAR(112) ,
      CIRCUIT_CITY VARCHAR(32) ,
      CIRCUIT_COUNTRY VARCHAR(31) ,
      CIRCUIT_MPLS VARCHAR(29) ,
      CIRCUIT_ROUTER VARCHAR(29) ,
      CIRCUIT_TELCO VARCHAR(8) ,
      CIRCUIT_TYPE VARCHAR(30) ,
      DISASTRECMETH VARCHAR(18) ,
      HAPARTNER TINYINT,
      HIGHAVAIL VARCHAR(3) ,
      IPCDISPBUSLINESR VARCHAR(3) ,
      IPCDISPEVENTSR VARCHAR(3) ,
      IPCDISPLAYATTRIB VARCHAR(3) ,
      IPCDISPURGSR VARCHAR(3) ,
      IPCSHOWCISSC VARCHAR(3) ,
      ANTIVIRUSREQ VARCHAR(3) ,
      BACKUPREQ VARCHAR(3) ,
      FAULTMONREQ VARCHAR(3) ,
      LOGCOMPLREQ VARCHAR(3) ,
      PATCHINGREQ VARCHAR(3) ,
      PERFCAPMGTREQ VARCHAR(3) ,
      STORAGEREPREQ VARCHAR(3) ,
      SWLICENSEREQ TINYINT,
      SIGNATURE VARCHAR(29) ,
      MACADDRESS VARCHAR(40) ,
      RESILIENCY VARCHAR(3) ,
      LASTRECERTDATE VARCHAR(40) ,
      STANDALONEPHYSICAL VARCHAR(3) ,
      EXTERNALSTORAGEREQ VARCHAR(3) ,
      APPLIANCETYPE VARCHAR(5) ,
      NORMALIZEDVERSION VARCHAR(28) ,
      IP_ADDRESSES VARCHAR(3152) ,
      DYNAMIC_AUTOMATION_FLAG VARCHAR(3) ,
      SERVICE_PACK VARCHAR(3) ,
      TECHNOLOGY_LEVEL TINYINT,
      CROWN_JEWELS VARCHAR(3) ,
      "LINKED ASSET STATUS" VARCHAR(18) ,
      "LINKED ASSET SN" VARCHAR(24) ,
      "LINKED ASSETNUM" VARCHAR(7) ,
      NETDEVSIZE VARCHAR(2) )
 ;

CREATE TABLE cse_appl 
     (
      appl_nm VARCHAR(8) ,
      appl_dsc VARCHAR(40) ,
      upd_login VARCHAR(7) ,
      upd_dt Date,
      owner_emp_id VARCHAR(8) ,
      create_dt Date,
      certified_flg VARCHAR(1) ,
      passthru_reqd_flg VARCHAR(1) ,
      ignore_conflicts_flg VARCHAR(1) ,
      pswd_notify_flg VARCHAR(1) ,
      privid_reqd_flg VARCHAR(1) ,
      ndi_app_nm VARCHAR(30) )
 ;

CREATE TABLE cse_appl_subappl 
     (
      appl_nm VARCHAR(8) ,
      subappl_nm VARCHAR(35) ,
      env_cd VARCHAR(1) ,
      default_role_nm VARCHAR(25) ,
      dual_auth_flg VARCHAR(1) ,
      access_level_flg VARCHAR(1) ,
      use_opid_flg VARCHAR(1) ,
      fixed_role_flg VARCHAR(1) ,
      dummy_subappl_flg VARCHAR(1) ,
      global_flg VARCHAR(1) ,
      disable_exempt_flg VARCHAR(1) ,
      dblogin_flg VARCHAR(1) ,
      appl_opid_flg VARCHAR(1) ,
      activity_flg VARCHAR(1) ,
      upd_login VARCHAR(7) ,
      upd_dt Date,
      default_server_nm VARCHAR(9) ,
      create_dt Date,
      special_subappl_flg VARCHAR(1) )
 
;

CREATE TABLE cse_empl 
     (
      employee_id VARCHAR(9) ,
      first_nm VARCHAR(15) ,
      last_nm VARCHAR(20) ,
      email_addr VARCHAR(50) )
;

CREATE TABLE cse_employee 
     (
      employee_id VARCHAR(9) ,
      first_nm VARCHAR(15) ,
      middle_initial VARCHAR(1) ,
      last_nm VARCHAR(20) ,
      employee_type VARCHAR(1) ,
      department_cd VARCHAR(11) ,
      cost_center VARCHAR(11) ,
      location VARCHAR(40) ,
      email_addr VARCHAR(50) ,
      phone_nbr VARCHAR(22) ,
      resp_mgr_id VARCHAR(9) ,
      status_flg VARCHAR(1) ,
      status_chg_dt VARCHAR(40) ,
      empl_priv_key TINYINT,
      full_nm_fwd VARCHAR(36) ,
      full_nm_rev VARCHAR(26) ,
      auth_sign_flg VARCHAR(1) ,
      auth_all_flg VARCHAR(1) ,
      mgr_flg VARCHAR(1) ,
      source_flg VARCHAR(1) ,
      upd_login VARCHAR(8) ,
      upd_dt VARCHAR(40) ,
      agency_end_dt VARCHAR(40) ,
      company_cd VARCHAR(7) ,
      hierarchy_cd VARCHAR(9) ,
      person_src_cd VARCHAR(2) ,
      person_id VARCHAR(7) ,
      summary_title VARCHAR(3) )
 
;

CREATE TABLE cse_emplstat 
     (
      employee_id VARCHAR(9)  NOT NULL,
      status_flg VARCHAR(1) )
;

CREATE TABLE cse_empl_flat 
     (
      mgr VARCHAR(9) ,
      emp VARCHAR(9) ,
      level TINYINT,
      path VARCHAR(2000) ,
      apath VARCHAR(2000) )
 ;

CREATE TABLE cse_empl_rollup 
     (
      mgr VARCHAR(9) ,
      emp VARCHAR(9) ,
      level TINYINT,
      path VARCHAR(2000) ,
      apath VARCHAR(2000) )
 ;

CREATE TABLE cse_logon_id_arch 
     (
      user_nm VARCHAR(8) ,
      id_type VARCHAR(1) ,
      id_status VARCHAR(1) ,
      id_status_chg_dt Date,
      employee_id VARCHAR(13) )
 ;

CREATE TABLE cse_logon_id_revert 
     (
      user_nm VARCHAR(7) ,
      id_type VARCHAR(1) ,
      id_status VARCHAR(1) ,
      id_status_chg_dt Date,
      employee_id VARCHAR(8) ,
      passthru_server_nm TINYINT,
      priv_nm VARCHAR(8) ,
      pe_string VARCHAR(9) ,
      expire_dt Date,
      orig_expire_dt TINYINT,
      pswd_expire_flg VARCHAR(1) ,
      disable_exempt_flg VARCHAR(1) ,
      central_login_flg VARCHAR(1) ,
      inactive_purge_flg VARCHAR(1) ,
      attempt_cnt TINYINT,
      attempt_allow TINYINT,
      disable_dt Date,
      disable_flg VARCHAR(1) ,
      disable_dsc VARCHAR(25) ,
      contract_end_dt Date,
      contract_id_flg VARCHAR(1) ,
      firecall_end_dt Date,
      upd_login VARCHAR(8) ,
      upd_dt Date,
      create_dt Date,
      owner_type_cd VARCHAR(1) ,
      special_id_flg VARCHAR(1) ,
      notify_cd VARCHAR(2) ,
      priority_cd TINYINT)
 ;

CREATE TABLE cse_role_details 
     (
      role_nm VARCHAR(28) ,
      env_cd VARCHAR(1) ,
      db_type VARCHAR(6) ,
      appl_nm VARCHAR(8) ,
      grp_role_nbr TINYINT,
      pub_id_grp_role VARCHAR(30) ,
      priv_id_grp_role VARCHAR(28) ,
      upd_login VARCHAR(10) ,
      upd_dt Date)
 ;

CREATE TABLE cse_server 
     (
      server_nm VARCHAR(11) ,
      server_dsc VARCHAR(40) ,
      alias_nm VARCHAR(11) ,
      server_type_cd VARCHAR(1) ,
      auth_passthru_flg VARCHAR(1) ,
      active_flg VARCHAR(1) ,
      disable_exempt_flg VARCHAR(1) ,
      appl_opid_flg VARCHAR(1) ,
      status_cd VARCHAR(1) ,
      hov_lane TINYINT,
      product_nm VARCHAR(6) ,
      host_nm VARCHAR(30) ,
      net_addr VARCHAR(20) ,
      port_nbr INTEGER,
      encrypt_cd TINYINT,
      env_cd VARCHAR(1) ,
      check_status VARCHAR(1) ,
      last_attempt_time Date,
      upd_login VARCHAR(6) ,
      upd_dt Date,
      product_version VARCHAR(12) ,
      create_dt Date,
      utr_exempt_flg VARCHAR(1) ,
      audit_failed_logins_flg VARCHAR(1) ,
      down_dt Date,
      down_days SMALLINT,
      primary_appl_nm VARCHAR(8) )
 ;

CREATE TABLE cse_subappl_server 
     (
      subappl_nm VARCHAR(32) ,
      server_nm VARCHAR(11) ,
      upd_login VARCHAR(7) ,
      upd_dt Date)
 ;

CREATE TABLE cse_user_subappl 
     (
      user_nm VARCHAR(7) ,
      subappl_nm VARCHAR(32) ,
      role_nm VARCHAR(28) ,
      access_level TINYINT,
      preferred_server_nm VARCHAR(18) ,
      disable_exempt_flg VARCHAR(1) ,
      activity_status VARCHAR(13) ,
      last_activity_dt Date,
      upd_login VARCHAR(8) ,
      upd_dt Date,
      create_dt Date)
 ;

CREATE TABLE cse_utr_id 
     (
      user_nm VARCHAR(65) ,
      server_nm VARCHAR(11) ,
      owner_emp_id VARCHAR(8) ,
      owner_type_cd VARCHAR(1) ,
      owner_app VARCHAR(8) ,
      id_type VARCHAR(1) ,
      id_status VARCHAR(1) ,
      id_status_chg_dt Date,
      create_dt Date,
      reason_dsc VARCHAR(55) ,
      db_privs_cd VARCHAR(1) ,
      last_reg_dt Date,
      reg_dba_emp_id VARCHAR(8) ,
      core_id_flg VARCHAR(1) ,
      owns_objs_flg VARCHAR(1) ,
      locked_flg VARCHAR(1) ,
      three_strike_flg VARCHAR(1) ,
      audit_flg VARCHAR(1) ,
      other_opts_num TINYINT,
      upd_login VARCHAR(7) ,
      upd_dt Date)
 ;

CREATE TABLE Ctrx_IconAccess 
     (
      App_Name VARCHAR(53) ,
      "ADGrp_Element(s)" VARCHAR(67) ,
      Citrix_Region VARCHAR(50) ,
      Citrix_AD_Domain VARCHAR(50) ,
      ADGrp_Structure VARCHAR(170) ,
      "ADGrp_Node?" VARCHAR(50) ,
      RemoveCORP_from_end_of_string VARCHAR(67) ,
      "In_AD_Master?" VARCHAR(50) ,
      Unique_App_Cnt INTEGER,
      Unique_ADGrp_Cnt INTEGER)
 ;

CREATE TABLE "custody train" 
     (
      rownum INTEGER,
      "DOC ID" VARCHAR(200) ,
      TEXT VARCHAR(4000) ,
      label1 TINYINT)
 ;

CREATE TABLE "custody-token" 
     (
      rownum INTEGER,
      tokennum INTEGER,
      token VARCHAR(300) )
 ;

CREATE TABLE dda_2017_privs 
     (
      DB_NAME VARCHAR(40) ,
      GRANTED_ROLE VARCHAR(40) ,
      GRANTEE VARCHAR(27) ,
      GRANTEE_TYPE VARCHAR(40) ,
      PRODUCT VARCHAR(40) )
 ;

CREATE TABLE DDA_Common_2018 
     (
      accountname VARCHAR(80) ,
      groupname VARCHAR(382) ,
      description VARCHAR(1023) ,
      CustomAttrib1 VARCHAR(80) ,
      customattrib2 VARCHAR(20) ,
      personsource VARCHAR(512) ,
      personid VARCHAR(512) ,
      firstname VARCHAR(256) ,
      lastname VARCHAR(256) ,
      emailaddress VARCHAR(256) ,
      AccountStatus VARCHAR(8) )
 ;

CREATE TABLE DDA_Common_2018_hari 
     (
      accountname VARCHAR(80) ,
      groupname VARCHAR(382) ,
      description VARCHAR(1023) ,
      CustomAttrib1 VARCHAR(80) ,
      customattrib2 VARCHAR(20) ,
      personsource VARCHAR(512) ,
      personid VARCHAR(512) ,
      firstname VARCHAR(256) ,
      lastname VARCHAR(256) ,
      emailaddress VARCHAR(256) ,
      AccountStatus VARCHAR(8) )
 ;

CREATE TABLE dda_db2_q1_2017 
     (
      DB2INST VARCHAR(4) ,
      GRANTOR VARCHAR(8) ,
      GRANTEE VARCHAR(8) ,
      NAME VARCHAR(8) ,
      DATEGRANTED INTEGER,
      CREATETABAUTH VARCHAR(1) ,
      CREATETSAUTH VARCHAR(1) ,
      DBADMAUTH VARCHAR(1) ,
      DBCTRLAUTH VARCHAR(1) ,
      DBMAINTAUTH VARCHAR(1) ,
      DISPLAYDBAUTH VARCHAR(1) ,
      DROPAUTH VARCHAR(1) ,
      IMAGCOPYAUTH VARCHAR(1) ,
      LOADAUTH VARCHAR(1) ,
      REORGAUTH VARCHAR(1) ,
      RECOVERDBAUTH VARCHAR(1) ,
      REPAIRAUTH VARCHAR(1) ,
      STARTDBAUTH VARCHAR(1) ,
      STATSAUTH VARCHAR(1) ,
      STOPAUTH VARCHAR(1) )
;

CREATE TABLE dda_db2_q2_2017 
     (
      DB2INST VARCHAR(4) ,
      GRANTOR VARCHAR(7) ,
      GRANTEE VARCHAR(8) ,
      DATEGRANTED INTEGER,
      CREATEDBAAUTH VARCHAR(1) ,
      CREATEDBCAUTH TINYINT,
      CREATEALIASAUTH VARCHAR(1) ,
      SYSADMAUTH VARCHAR(1) ,
      SYSOPRAUTH VARCHAR(1) ,
      SYSCTRLAUTH TINYINT)
 
;

CREATE TABLE dda_db2_q3_2017 
     (
      DB2INST VARCHAR(4) ,
      GRANTOR VARCHAR(7) ,
      GRANTEE VARCHAR(10) ,
      DBNAME VARCHAR(8) ,
      TCREATOR VARCHAR(11) ,
      TTNAME VARCHAR(32) ,
      INSERTAUTH VARCHAR(10) ,
      UPDATEAUTH VARCHAR(10) ,
      DELETEAUTH VARCHAR(10) ,
      ALTERAUTH VARCHAR(9) ,
      DATEGRANTED VARCHAR(11) )
;

CREATE TABLE dda_dms_2018_privs_1 
     (
      DB_NAME VARCHAR(80) ,
      PRODUCT VARCHAR(80) ,
      GRANTEE VARCHAR(80) ,
      GRANTEE_TYPE VARCHAR(80) ,
      PRIV_OR_ROLE VARCHAR(200) ,
      PERMISSION VARCHAR(80) ,
      INST_NAME VARCHAR(80) )
 ;

CREATE TABLE dda_dms_2018_privs_apmd 
     (
      server_nm VARCHAR(11) ,
      user_nm VARCHAR(7) ,
      employee_id VARCHAR(8) ,
      appl_nm VARCHAR(8) ,
      description VARCHAR(40) ,
      subappl_nm VARCHAR(32) ,
      role_nm VARCHAR(28) ,
      db_type VARCHAR(6) ,
      pub_id_grp_role VARCHAR(30) ,
      env_cd VARCHAR(1) )
 
;

CREATE TABLE dda_dms_2018_privs_apmd_hari 
     (
      server_nm VARCHAR(11) ,
      user_nm VARCHAR(7) ,
      employee_id VARCHAR(8) ,
      appl_nm VARCHAR(8) ,
      description VARCHAR(40) ,
      subappl_nm VARCHAR(32) ,
      role_nm VARCHAR(28) ,
      db_type VARCHAR(6) ,
      pub_id_grp_role VARCHAR(30) ,
      env_cd VARCHAR(1) )
 ;

CREATE TABLE dda_dms_2018_privs_apmd_old 
     (
      server_nm VARCHAR(11) ,
      user_nm VARCHAR(7) ,
      employee_id VARCHAR(8) ,
      appl_nm VARCHAR(8) ,
      description VARCHAR(40) ,
      subappl_nm VARCHAR(32) ,
      role_nm VARCHAR(28) ,
      db_type VARCHAR(6) ,
      pub_id_grp_role VARCHAR(30) ,
      env_cd VARCHAR(1) )
;

CREATE TABLE dda_dms_2018_privs_filter 
     (
      PRODUCT VARCHAR(80) ,
      PRIV_OR_ROLE VARCHAR(200) )
;

CREATE TABLE dda_dms_2018_privs_msft 
     (
      DB_NAME VARCHAR(80) ,
      PRODUCT VARCHAR(80) ,
      GRANTEE VARCHAR(80) ,
      GRANTEE_TYPE VARCHAR(80) ,
      PRIV_OR_ROLE VARCHAR(200) ,
      PERMISSION VARCHAR(80) ,
      INST_NAME VARCHAR(100) )
 
;

CREATE TABLE dda_dms_2018_privs_orcl 
     (
      DB_NAME VARCHAR(80) ,
      PRODUCT VARCHAR(80) ,
      GRANTEE VARCHAR(80) ,
      GRANTEE_TYPE VARCHAR(80) ,
      PRIV_OR_ROLE VARCHAR(200) ,
      PERMISSION VARCHAR(80) ,
      INST_NAME VARCHAR(80) )
;

CREATE TABLE dda_dms_2018_privs_sybs 
     (
      DB_NAME VARCHAR(80) ,
      PRODUCT VARCHAR(80) ,
      GRANTEE VARCHAR(80) ,
      GRANTEE_TYPE VARCHAR(80) ,
      PRIV_OR_ROLE VARCHAR(200) ,
      PERMISSION VARCHAR(80) ,
      INST_NAME VARCHAR(100) )
 
;

CREATE TABLE dda_dms_2018_privs_sybs_ais 
     (
      DB_NAME VARCHAR(80) ,
      PRODUCT VARCHAR(80) ,
      GRANTEE VARCHAR(80) ,
      GRANTEE_TYPE VARCHAR(80) ,
      PRIV_OR_ROLE VARCHAR(200) ,
      PERMISSION VARCHAR(80) ,
      INST_NAME VARCHAR(200) )
;

CREATE TABLE dda_privs_2018 
     (
      DB_NAME VARCHAR(80) ,
      PRODUCT VARCHAR(80) ,
      GRANTEE VARCHAR(80) ,
      GRANTEE_TYPE VARCHAR(80) ,
      PRIV_OR_ROLE VARCHAR(200) ,
      PERMISSION VARCHAR(80) ,
      INST_NAME VARCHAR(80) )
 ;

CREATE TABLE dda_vsam_app_hlq 
     (
      AppCode VARCHAR(3) ,
      HLQ VARCHAR(12) )
 ;

CREATE TABLE deptxclusters 
     (
      DEPT_NAME VARCHAR(30) ,
      ClusterID SMALLINT,
      entitlementsinCluster INTEGER,
      deptpersoncnt INTEGER,
      distinct_person INTEGER,
      Hitrate FLOAT)
;

CREATE TABLE deptxclustersBess 
     (
      DEPT_NAME VARCHAR(30) ,
      ClusterID SMALLINT,
      dcnts FLOAT,
      deptpersoncnt INTEGER,
      distinct_person INTEGER,
      Hitrate FLOAT)
;

CREATE TABLE dim_ibm_roles 
     (
      "Entitlement Type" VARCHAR(4) ,
      "Role Name" VARCHAR(48) ,
      "Entitlements in Role" VARCHAR(16) ,
      CICS VARCHAR(4) ,
      "USER attributes (RACF profile segments)" VARCHAR(50) )
 ;

CREATE TABLE DIM_IDINTERNALPERSON 
     (
      JOB_FUNCTION_CODE VARCHAR(3) ,
      LAST_NAME VARCHAR(50) ,
      LEVEL1_CODE VARCHAR(3) ,
      LEVEL1_NAME VARCHAR(17) ,
      LEVEL2_CODE VARCHAR(10) ,
      LEVEL2_NAME VARCHAR(28) ,
      LEVEL3_CODE VARCHAR(10) ,
      LEVEL3_NAME VARCHAR(30) ,
      LEVEL4_CODE VARCHAR(10) ,
      LEVEL4_NAME VARCHAR(30) ,
      LEVEL5_CODE VARCHAR(10) ,
      LEVEL5_NAME VARCHAR(30) ,
      LEVEL6_CODE VARCHAR(10) ,
      LEVEL6_NAME VARCHAR(30) ,
      LOC_DESC VARCHAR(30) ,
      MANAGER_EMPL_ID INTEGER,
      MANAGER_INDICATION VARCHAR(5) ,
      MANAGER_NAME VARCHAR(50) ,
      MIDDLE_INITIAL VARCHAR(1) ,
      NICK_NAME TINYINT,
      OFFICER_CD VARCHAR(1) ,
      PERSON_ID INTEGER,
      REASON_CODE TINYINT,
      REGION VARCHAR(2) ,
      REGION_1 VARCHAR(3) ,
      REHIRE_DATE Date,
      COMPANY_NAME VARCHAR(50) ,
      COST_CENTER INTEGER,
      CURRENT_MAIL_STOP VARCHAR(1) ,
      CW_AGENCY_END_DATE Date,
      CREATED_BY VARCHAR(14) ,
      CREATED_TMS Date,
      DEPT_CODE TINYINT,
      DEPT_ENTRY_DATE Date,
      DEPT_NAME VARCHAR(50) ,
      EFFECTIVE_DATE Date,
      EMPLOYEE_CLASS VARCHAR(1) ,
      EMPLOYEE_TYPE VARCHAR(1) ,
      EMPL_HIRE_DATE Date,
      EVENT_TYPE VARCHAR(8) ,
      FINGER_DATE Date,
      FINGER_FLG VARCHAR(1) ,
      FIRST_NAME VARCHAR(50) ,
      FULL_NAME VARCHAR(100) ,
      FULL_OR_PART_TIME VARCHAR(9) ,
      HIER_CODE TINYINT,
      HOME_COUNTRY VARCHAR(3) ,
      HOST_COUNTRY VARCHAR(3) ,
      HOST_LOC_CODE VARCHAR(3) ,
      JOB_CODE VARCHAR(6) ,
      JOB_DESCRIPTION VARCHAR(50) ,
      SET_ID TINYINT,
      SSC_STANDARD_HOURS TINYINT,
      STATUS VARCHAR(1) ,
      SUMMARY_TITLE TINYINT,
      SAILPOINTID VARCHAR(12) ,
      TERM_DATE Date,
      TERM_REASON VARCHAR(3) ,
      TOTAL_FTE TINYINT,
      UPDATE_GUARD TINYINT,
      ACTION_CODE VARCHAR(3) ,
      ACTION_DATE Date,
      ACTION_DESCRIPTION VARCHAR(25) ,
      ACTION_REASON VARCHAR(3) ,
      ACTION_REASON_DESCRIPTION VARCHAR(30) ,
      ADDITIONAL_MANAGER_ID VARCHAR(6) ,
      AGENCY_NAME VARCHAR(100) ,
      BANK_TITLE_SUMMARY VARCHAR(3) ,
      BIRTH_DATE VARCHAR(5) ,
      BKGRND_DATE Date,
      BKGRND_FLG VARCHAR(1) ,
      BLDG_LOC_CODE VARCHAR(7) ,
      BUS_PHONE_NUMBER TINYINT,
      BUS_UNIT VARCHAR(5) ,
      COMPANY_CODE SMALLINT,
      IDGUID varbinary(16),
      LAST_DATE_WORKED Date)
 ;

CREATE TABLE dim_racf_user_gate_list 
     (
      racf_user_id VARCHAR(8) ,
      gate_list VARCHAR(1000) )
;

CREATE TABLE dim_racf_user_group_appr_list 
     (
      racf_user_Group VARCHAR(40) ,
      appr_list VARCHAR(1000) )
;

CREATE TABLE dim_racf_user_group_app_list 
     (
      racf_user_Group VARCHAR(8) ,
      app_list VARCHAR(1000) )
;

CREATE TABLE dim_racf_user_group_mnem_list 
     (
      racf_user_Group VARCHAR(8) ,
      mnem_list VARCHAR(1000) )
;

CREATE TABLE dim_racf_user_group_pay_list 
     (
      racf_user_Group VARCHAR(8) ,
      pay_list VARCHAR(1000) )
;

CREATE TABLE escape_test 
     (
      sum_Number_of_Records_ok INTEGER,
      yr_AS_OF_TMS_ok INTEGER)
;

CREATE TABLE "ETS recert" 
     (
      Name VARCHAR(100) )
 ;

CREATE TABLE FinalBessClusters 
     (
      ClusterID SMALLINT,
      varid INTEGER,
      obscnt INTEGER)
;

CREATE TABLE FinalClusters 
     (
      ClusterID SMALLINT,
      group_guid VARCHAR(32) ,
      obscnt INTEGER)
;

CREATE TABLE GEMS 
     (
      GEM_ID VARCHAR(200) ,
      LEGAL_NAME VARCHAR(2000) ,
      GLEIS_LEGAL_FORM VARCHAR(200) ,
      COUNTRY_OF_DOMICILE VARCHAR(200) ,
      STATE_OF_DOMICILE VARCHAR(200) )
 ;

CREATE TABLE "GEMS-token" 
     (
      gem_id VARCHAR(10) ,
      tokennum INTEGER,
      token VARCHAR(30) )
 ;

CREATE TABLE "ghr mask" 
     (
      AS_OF_TMS VARCHAR(40) ,
      ROW_GUID VARCHAR(40) ,
      PERSON_ID VARCHAR(6) )
 ;

CREATE TABLE GLEIF 
     (
      LEI VARCHAR(20) ,
      "Entity.LegalName" VARCHAR(198) ,
      "Entity.LegalName.@xml:lang" TINYINT,
      "Entity.OtherEntityNames.OtherEntityName.1" VARCHAR(191) ,
      "Entity.OtherEntityNames.OtherEntityName.1.@xml:lang" TINYINT,
      "Entity.OtherEntityNames.OtherEntityName.1.@type" VARCHAR(36) ,
      "Entity.OtherEntityNames.OtherEntityName.2" VARCHAR(185) ,
      "Entity.OtherEntityNames.OtherEntityName.2.@xml:lang" TINYINT,
      "Entity.OtherEntityNames.OtherEntityName.2.@type" VARCHAR(36) ,
      "Entity.OtherEntityNames.OtherEntityName.3" VARCHAR(168) ,
      "Entity.OtherEntityNames.OtherEntityName.3.@xml:lang" TINYINT,
      "Entity.OtherEntityNames.OtherEntityName.3.@type" VARCHAR(36) ,
      "Entity.OtherEntityNames.OtherEntityName.4" VARCHAR(72) ,
      "Entity.OtherEntityNames.OtherEntityName.4.@xml:lang" TINYINT,
      "Entity.OtherEntityNames.OtherEntityName.4.@type" VARCHAR(11) ,
      "Entity.OtherEntityNames.OtherEntityName.5" TINYINT,
      "Entity.OtherEntityNames.OtherEntityName.5.@xml:lang" TINYINT,
      "Entity.OtherEntityNames.OtherEntityName.5.@type" TINYINT,
      "Entity.LegalAddress.Line1" VARCHAR(60) ,
      "Entity.LegalAddress.Line2" VARCHAR(34) ,
      "Entity.LegalAddress.Line3" VARCHAR(33) ,
      "Entity.LegalAddress.Line4" VARCHAR(27) ,
      "Entity.LegalAddress.City" VARCHAR(28) ,
      "Entity.LegalAddress.Region" VARCHAR(6) ,
      "Entity.LegalAddress.Country" VARCHAR(2) ,
      "Entity.LegalAddress.PostalCode" VARCHAR(10) ,
      "Entity.LegalAddress.@xml:lang" TINYINT,
      "Entity.HeadquartersAddress.Line1" VARCHAR(62) ,
      "Entity.HeadquartersAddress.Line2" VARCHAR(34) ,
      "Entity.HeadquartersAddress.Line3" VARCHAR(29) ,
      "Entity.HeadquartersAddress.Line4" VARCHAR(16) ,
      "Entity.HeadquartersAddress.City" VARCHAR(28) ,
      "Entity.HeadquartersAddress.Region" VARCHAR(6) ,
      "Entity.HeadquartersAddress.Country" VARCHAR(2) ,
      "Entity.HeadquartersAddress.@xml:lang" TINYINT,
      "Entity.HeadquartersAddress.PostalCode" VARCHAR(10) ,
      "Entity.OtherAddresses.OtherAddress.1.Line1" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.Line2" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.Line3" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.Line4" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.City" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.Region" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.Country" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.PostalCode" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.@xml:lang" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.@type" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.Line1" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.Line2" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.Line3" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.Line4" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.City" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.Region" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.Country" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.PostalCode" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.@xml:lang" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.@type" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.Line1" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.Line2" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.Line3" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.Line4" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.City" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.Region" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.Country" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.PostalCode" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.@xml:lang" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.@type" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.Line1" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.Line2" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.Line3" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.Line4" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.City" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.Region" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.Country" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.PostalCode" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.@xml:lang" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.@type" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.Line1" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.Line2" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.Line3" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.Line4" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.City" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.Region" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.Country" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.PostalCode" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.@xml:lang" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.@type" TINYINT,
      "Entity.BusinessRegisterEntityID" VARCHAR(19) ,
      "Entity.BusinessRegisterEntityID.@register" VARCHAR(8) ,
      "Entity.LegalJurisdiction" VARCHAR(2) ,
      "Entity.LegalForm" VARCHAR(71) ,
      "Entity.LegalForm.@xml:lang" TINYINT,
      "Entity.AssociatedEntity.1.@type" TINYINT,
      "Entity.AssociatedEntity.1.AssociatedLEI" TINYINT,
      "Entity.AssociatedEntity.1.AssociatedEntityName" TINYINT,
      "Entity.AssociatedEntity.1.AssociatedEntityName.@xml:lang" TINYINT,
      "Entity.AssociatedEntity.2.@type" TINYINT,
      "Entity.AssociatedEntity.2.AssociatedLEI" TINYINT,
      "Entity.AssociatedEntity.2.AssociatedEntityName" TINYINT,
      "Entity.AssociatedEntity.2.AssociatedEntityName.@xml:lang" TINYINT,
      "Entity.AssociatedEntity.3.@type" TINYINT,
      "Entity.AssociatedEntity.3.AssociatedLEI" TINYINT,
      "Entity.AssociatedEntity.3.AssociatedEntityName" TINYINT,
      "Entity.AssociatedEntity.3.AssociatedEntityName.@xml:lang" TINYINT,
      "Entity.AssociatedEntity.4.@type" TINYINT,
      "Entity.AssociatedEntity.4.AssociatedLEI" TINYINT,
      "Entity.AssociatedEntity.4.AssociatedEntityName" TINYINT,
      "Entity.AssociatedEntity.4.AssociatedEntityName.@xml:lang" TINYINT,
      "Entity.AssociatedEntity.5.@type" TINYINT,
      "Entity.AssociatedEntity.5.AssociatedLEI" TINYINT,
      "Entity.AssociatedEntity.5.AssociatedEntityName" TINYINT,
      "Entity.AssociatedEntity.5.AssociatedEntityName.@xml:lang" TINYINT,
      "Entity.EntityStatus" VARCHAR(8) ,
      "Entity.EntityExpirationDate" VARCHAR(29) ,
      "Entity.EntityExpirationReason" VARCHAR(16) ,
      "Entity.SuccessorEntity.SuccessorLEI" VARCHAR(20) ,
      "Entity.SuccessorEntity.SuccessorEntityName" TINYINT,
      "Entity.SuccessorEntity.SuccessorEntityName.@xml:lang" TINYINT,
      "Registration.InitialRegistrationDate" VARCHAR(29) ,
      "Registration.LastUpdateDate" VARCHAR(29) ,
      "Registration.RegistrationStatus" VARCHAR(9) ,
      "Registration.NextRenewalDate" VARCHAR(29) ,
      "Registration.ManagingLOU" VARCHAR(20) ,
      "Registration.ValidationSources" VARCHAR(22) )
 ;

CREATE TABLE "GLEIF-state street" 
     (
      LEI VARCHAR(20) ,
      "Entity.LegalName" VARCHAR(198) ,
      "Entity.LegalName.@xml:lang" TINYINT,
      "Entity.OtherEntityNames.OtherEntityName.1" VARCHAR(191) ,
      "Entity.OtherEntityNames.OtherEntityName.1.@xml:lang" TINYINT,
      "Entity.OtherEntityNames.OtherEntityName.1.@type" VARCHAR(36) ,
      "Entity.OtherEntityNames.OtherEntityName.2" VARCHAR(185) ,
      "Entity.OtherEntityNames.OtherEntityName.2.@xml:lang" TINYINT,
      "Entity.OtherEntityNames.OtherEntityName.2.@type" VARCHAR(36) ,
      "Entity.OtherEntityNames.OtherEntityName.3" VARCHAR(168) ,
      "Entity.OtherEntityNames.OtherEntityName.3.@xml:lang" TINYINT,
      "Entity.OtherEntityNames.OtherEntityName.3.@type" VARCHAR(36) ,
      "Entity.OtherEntityNames.OtherEntityName.4" VARCHAR(72) ,
      "Entity.OtherEntityNames.OtherEntityName.4.@xml:lang" TINYINT,
      "Entity.OtherEntityNames.OtherEntityName.4.@type" VARCHAR(11) ,
      "Entity.OtherEntityNames.OtherEntityName.5" TINYINT,
      "Entity.OtherEntityNames.OtherEntityName.5.@xml:lang" TINYINT,
      "Entity.OtherEntityNames.OtherEntityName.5.@type" TINYINT,
      "Entity.LegalAddress.Line1" VARCHAR(60) ,
      "Entity.LegalAddress.Line2" VARCHAR(34) ,
      "Entity.LegalAddress.Line3" VARCHAR(33) ,
      "Entity.LegalAddress.Line4" VARCHAR(27) ,
      "Entity.LegalAddress.City" VARCHAR(28) ,
      "Entity.LegalAddress.Region" VARCHAR(6) ,
      "Entity.LegalAddress.Country" VARCHAR(2) ,
      "Entity.LegalAddress.PostalCode" VARCHAR(10) ,
      "Entity.LegalAddress.@xml:lang" TINYINT,
      "Entity.HeadquartersAddress.Line1" VARCHAR(62) ,
      "Entity.HeadquartersAddress.Line2" VARCHAR(34) ,
      "Entity.HeadquartersAddress.Line3" VARCHAR(29) ,
      "Entity.HeadquartersAddress.Line4" VARCHAR(16) ,
      "Entity.HeadquartersAddress.City" VARCHAR(28) ,
      "Entity.HeadquartersAddress.Region" VARCHAR(6) ,
      "Entity.HeadquartersAddress.Country" VARCHAR(2) ,
      "Entity.HeadquartersAddress.@xml:lang" TINYINT,
      "Entity.HeadquartersAddress.PostalCode" VARCHAR(10) ,
      "Entity.OtherAddresses.OtherAddress.1.Line1" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.Line2" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.Line3" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.Line4" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.City" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.Region" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.Country" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.PostalCode" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.@xml:lang" TINYINT,
      "Entity.OtherAddresses.OtherAddress.1.@type" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.Line1" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.Line2" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.Line3" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.Line4" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.City" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.Region" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.Country" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.PostalCode" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.@xml:lang" TINYINT,
      "Entity.OtherAddresses.OtherAddress.2.@type" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.Line1" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.Line2" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.Line3" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.Line4" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.City" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.Region" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.Country" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.PostalCode" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.@xml:lang" TINYINT,
      "Entity.OtherAddresses.OtherAddress.3.@type" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.Line1" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.Line2" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.Line3" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.Line4" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.City" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.Region" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.Country" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.PostalCode" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.@xml:lang" TINYINT,
      "Entity.OtherAddresses.OtherAddress.4.@type" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.Line1" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.Line2" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.Line3" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.Line4" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.City" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.Region" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.Country" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.PostalCode" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.@xml:lang" TINYINT,
      "Entity.OtherAddresses.OtherAddress.5.@type" TINYINT,
      "Entity.BusinessRegisterEntityID" VARCHAR(19) ,
      "Entity.BusinessRegisterEntityID.@register" VARCHAR(8) ,
      "Entity.LegalJurisdiction" VARCHAR(2) ,
      "Entity.LegalForm" VARCHAR(71) ,
      "Entity.LegalForm.@xml:lang" TINYINT,
      "Entity.AssociatedEntity.1.@type" TINYINT,
      "Entity.AssociatedEntity.1.AssociatedLEI" TINYINT,
      "Entity.AssociatedEntity.1.AssociatedEntityName" TINYINT,
      "Entity.AssociatedEntity.1.AssociatedEntityName.@xml:lang" TINYINT,
      "Entity.AssociatedEntity.2.@type" TINYINT,
      "Entity.AssociatedEntity.2.AssociatedLEI" TINYINT,
      "Entity.AssociatedEntity.2.AssociatedEntityName" TINYINT,
      "Entity.AssociatedEntity.2.AssociatedEntityName.@xml:lang" TINYINT,
      "Entity.AssociatedEntity.3.@type" TINYINT,
      "Entity.AssociatedEntity.3.AssociatedLEI" TINYINT,
      "Entity.AssociatedEntity.3.AssociatedEntityName" TINYINT,
      "Entity.AssociatedEntity.3.AssociatedEntityName.@xml:lang" TINYINT,
      "Entity.AssociatedEntity.4.@type" TINYINT,
      "Entity.AssociatedEntity.4.AssociatedLEI" TINYINT,
      "Entity.AssociatedEntity.4.AssociatedEntityName" TINYINT,
      "Entity.AssociatedEntity.4.AssociatedEntityName.@xml:lang" TINYINT,
      "Entity.AssociatedEntity.5.@type" TINYINT,
      "Entity.AssociatedEntity.5.AssociatedLEI" TINYINT,
      "Entity.AssociatedEntity.5.AssociatedEntityName" TINYINT,
      "Entity.AssociatedEntity.5.AssociatedEntityName.@xml:lang" TINYINT,
      "Entity.EntityStatus" VARCHAR(8) ,
      "Entity.EntityExpirationDate" VARCHAR(29) ,
      "Entity.EntityExpirationReason" VARCHAR(16) ,
      "Entity.SuccessorEntity.SuccessorLEI" VARCHAR(20) ,
      "Entity.SuccessorEntity.SuccessorEntityName" TINYINT,
      "Entity.SuccessorEntity.SuccessorEntityName.@xml:lang" TINYINT,
      "Registration.InitialRegistrationDate" VARCHAR(29) ,
      "Registration.LastUpdateDate" VARCHAR(29) ,
      "Registration.RegistrationStatus" VARCHAR(9) ,
      "Registration.NextRenewalDate" VARCHAR(29) ,
      "Registration.ManagingLOU" VARCHAR(20) ,
      "Registration.ValidationSources" VARCHAR(22) )
 ;

CREATE TABLE "GLEIF-state street-token" 
     (
      lei VARCHAR(10) ,
      tokennum INTEGER,
      token VARCHAR(30) )
 ;

CREATE TABLE hari_test 
     (
      DB_NAME VARCHAR(80) ,
      PRODUCT VARCHAR(80) ,
      GRANTEE VARCHAR(80) ,
      GRANTEE_TYPE VARCHAR(80) ,
      PRIV_OR_ROLE VARCHAR(200) ,
      PERMISSION VARCHAR(80) ,
      INST_NAME VARCHAR(80) )
 ;

CREATE TABLE IDINTERNALPERSON 
     (
      MANAGER_EMPL_ID INTEGER,
      PERSON_ID INTEGER,
      CURRENT_MAIL_STOP VARCHAR(1) ,
      MANAGER_INDICATION VARCHAR(5) ,
      BANK_TITLE_SUMMARY VARCHAR(3) ,
      BLDG_LOC_CODE VARCHAR(7) ,
      BUS_UNIT VARCHAR(5) ,
      COMPANY_CODE SMALLINT,
      COMPANY_NAME VARCHAR(32) ,
      COST_CENTER VARCHAR(10) ,
      DEPT_CODE TINYINT,
      DEPT_NAME VARCHAR(30) ,
      EMPLOYEE_TYPE VARCHAR(1) ,
      HIER_CODE TINYINT,
      HOME_COUNTRY VARCHAR(3) ,
      HOST_COUNTRY VARCHAR(3) ,
      HOST_LOC_CODE VARCHAR(7) ,
      IDGUID varbinary(16),
      JOB_CODE VARCHAR(6) ,
      JOB_DESCRIPTION VARCHAR(30) ,
      JOB_FUNCTION_CODE VARCHAR(3) ,
      LEVEL1_CODE VARCHAR(3) ,
      LEVEL1_NAME VARCHAR(17) ,
      LEVEL2_CODE VARCHAR(10) ,
      LEVEL2_NAME VARCHAR(28) ,
      LEVEL3_CODE VARCHAR(10) ,
      LEVEL3_NAME VARCHAR(30) ,
      LEVEL4_CODE VARCHAR(10) ,
      LEVEL4_NAME VARCHAR(30) ,
      LEVEL5_CODE VARCHAR(10) ,
      LEVEL5_NAME VARCHAR(30) ,
      LEVEL6_CODE VARCHAR(10) ,
      LEVEL6_NAME VARCHAR(30) ,
      LOC_DESC VARCHAR(31) ,
      OFFICER_CD VARCHAR(1) ,
      REGION VARCHAR(2) ,
      REGION_1 VARCHAR(3) ,
      SAILPOINTID VARCHAR(12) ,
      STATUS VARCHAR(1) ,
      SUMMARY_TITLE TINYINT)
 ;

CREATE TABLE IDINTERNALPERSON2 
     (
      JOB_FUNCTION_CODE VARCHAR(3) ,
      LEVEL1_CODE VARCHAR(3) ,
      LEVEL1_NAME VARCHAR(17) ,
      LEVEL2_CODE VARCHAR(10) ,
      LEVEL2_NAME VARCHAR(28) ,
      LEVEL3_CODE VARCHAR(10) ,
      LEVEL3_NAME VARCHAR(30) ,
      LEVEL4_CODE VARCHAR(10) ,
      LEVEL4_NAME VARCHAR(30) ,
      LEVEL5_CODE VARCHAR(10) ,
      LEVEL5_NAME VARCHAR(30) ,
      LEVEL6_CODE VARCHAR(10) ,
      LEVEL6_NAME VARCHAR(30) ,
      MANAGER_EMPL_ID INTEGER,
      MANAGER_INDICATION VARCHAR(5) ,
      OFFICER_CD VARCHAR(1) ,
      PERSON_ID INTEGER,
      REASON_CODE TINYINT,
      REGION VARCHAR(2) ,
      REGION_1 VARCHAR(3) ,
      EMPLOYEE_CLASS VARCHAR(1) ,
      EMPLOYEE_TYPE VARCHAR(1) )
 ;

CREATE TABLE import_OU_Permissions 
     (
      organizationalUnit VARCHAR(200) ,
      objectTypeName VARCHAR(62) ,
      inheritedObjectTypeName VARCHAR(33) ,
      ActiveDirectoryRights VARCHAR(125) ,
      IdentityReference VARCHAR(52) ,
      AccessControlType VARCHAR(5) ,
      IsInherited VARCHAR(5) )
 ;

CREATE TABLE "LAI Roles" 
     (
      "Business Unit" VARCHAR(40) ,
      "Role" VARCHAR(80) ,
      racf_user_group VARCHAR(256) ,
      upd_login VARCHAR(20) ,
      upd_dt VARCHAR(30) )
 ;

CREATE TABLE lai_role_racf_group 
     (
      Division VARCHAR(40) ,
      "Role" VARCHAR(80) ,
      Racf_User_Group VARCHAR(8) ,
      "User Group Description" VARCHAR(80) )
 ;

CREATE TABLE "Mainframe Apps" 
     (
      ID SMALLINT,
      said VARCHAR(11) ,
      app_code VARCHAR(3) ,
      app_name VARCHAR(67) ,
      app_desc VARCHAR(255) ,
      ent_platform_1 VARCHAR(4) ,
      xx_ent_patform_2 VARCHAR(8) ,
      xx_data_ent_store VARCHAR(9) ,
      client_identity_store VARCHAR(62) ,
      xx_Internal_external VARCHAR(8) ,
      xx_del_auth_product VARCHAR(9) ,
      xx_mfa_account_store VARCHAR(3) ,
      primary_account_auth_store VARCHAR(8) ,
      authentication_method_2 VARCHAR(14) ,
      client_portal VARCHAR(12) ,
      sec_admin_team VARCHAR(25) ,
      sec_admin_contact VARCHAR(16) ,
      db_version VARCHAR(24) ,
      app_platform VARCHAR(12) ,
      opensys_platform VARCHAR(28) ,
      xx_ad_domain_for_users VARCHAR(8) ,
      ad_domain_for_auth VARCHAR(5) ,
      vendor_app VARCHAR(14) ,
      xx_it_senior_mgr VARCHAR(19) ,
      it_svp VARCHAR(22) ,
      it_owner VARCHAR(52) ,
      ux_manager VARCHAR(21) ,
      ux_primary VARCHAR(21) ,
      ux_secondary VARCHAR(18) ,
      bus_org VARCHAR(17) ,
      prod_status VARCHAR(13) ,
      xx_svp_comments VARCHAR(4) ,
      ext_hosted VARCHAR(2) ,
      xx_soc1_only VARCHAR(3) ,
      xx_ey_sox_only VARCHAR(5) ,
      xx_ma201_only VARCHAR(5) ,
      xx_ssc_sox_only VARCHAR(5) ,
      xx_fed_only VARCHAR(5) ,
      xx_cash_sec_only VARCHAR(5) ,
      xx_resiliency_only VARCHAR(5) ,
      xx_itgc VARCHAR(5) ,
      xx_bus_priority_app VARCHAR(3) ,
      APMD_app_name TINYINT,
      xx_prov_pattern_num TINYINT,
      total_num_users VARCHAR(9) ,
      total_num_client_users VARCHAR(15) ,
      freq_used VARCHAR(5) ,
      who_responded VARCHAR(52) ,
      uses_siteminder VARCHAR(4) ,
      mfa_num VARCHAR(3) ,
      additional_acct_stores VARCHAR(3) ,
      add_acct_stores_used VARCHAR(4) ,
      coarse_grained_auth VARCHAR(3) ,
      coarse_grained_store VARCHAR(7) ,
      data_entitlement_store VARCHAR(23) ,
      data_center VARCHAR(43) ,
      xx_mtg_date VARCHAR(9) ,
      xx_mtg_status VARCHAR(33) ,
      assigned VARCHAR(17) ,
      data_collection_Mtg_scheduled Date,
      data_collection_mtg_held Date,
      data_collection_status VARCHAR(11) ,
      confidence_on_pattern VARCHAR(9) ,
      top_300 VARCHAR(5) ,
      candidate_for_POC VARCHAR(5) ,
      client_id_store VARCHAR(20) ,
      bus_svp VARCHAR(20) ,
      bus_owner VARCHAR(22) ,
      target_retirement_date VARCHAR(14) ,
      ent_shared VARCHAR(55) ,
      ent_shared_apps VARCHAR(40) ,
      role_based VARCHAR(3) ,
      func_based VARCHAR(3) ,
      complex_ent VARCHAR(51) ,
      data_ent_category VARCHAR(20) ,
      xx_fund_ent VARCHAR(2) ,
      app_activity_logging VARCHAR(11) ,
      xx_crown_jewels VARCHAR(44) ,
      xx_crown_jewels_2016 VARCHAR(3) ,
      user_domain_corp VARCHAR(8) ,
      user_domain_dmz VARCHAR(8) ,
      user_domain_global VARCHAR(8) ,
      user_domain_ifs VARCHAR(8) ,
      user_domain_ims VARCHAR(8) ,
      user_domain_ims_west VARCHAR(8) ,
      user_domain_pfs VARCHAR(8) ,
      user_domain_ssga VARCHAR(8) ,
      user_domain_Currenex VARCHAR(8) ,
      user_domain_Other VARCHAR(14) ,
      ring_fenced VARCHAR(5) ,
      xx_GDPR VARCHAR(3) ,
      rsa_token_used VARCHAR(3) ,
      esf_provisioning VARCHAR(2) ,
      "Delete" VARCHAR(8) ,
      DeleteReason VARCHAR(6) ,
      HighRisk VARCHAR(3) )
 ;

CREATE TABLE MASTER_ENTERPRISE_USERS_2017 
     (
      ID INTEGER,
      IDC_GROUP_ID INTEGER,
      IDC_ID INTEGER,
      USER_ID VARCHAR(256) ,
      CREATION_DATE VARCHAR(40) ,
      DELETION_DATE VARCHAR(40) ,
      UNIQUE_ID VARCHAR(2000) ,
      DEPARTMENT VARCHAR(256) ,
      EMAIL_ADDRESS VARCHAR(256) ,
      FIRST_NAME VARCHAR(256) ,
      IS_TERMINATED INTEGER,
      JOB_STATUS VARCHAR(256) ,
      LAST_NAME VARCHAR(256) ,
      SUPERVISOR_ID INTEGER,
      "TITLE" VARCHAR(256) ,
      BUSINESS_UNIT_ID INTEGER,
      VIOLATION_COUNT INTEGER,
      EXCEPTION_COUNT INTEGER,
      TERMINATION_DATE VARCHAR(40) ,
      IS_DELETED INTEGER,
      BACKUP_SUPERVISOR INTEGER,
      BACKUP_SUPERVISOR_NAME VARCHAR(512) ,
      ADD_STATE INTEGER,
      REMOVE_STATE INTEGER,
      CUS_ATTR_USER_CAS_1 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_10 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_11 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_12 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_13 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_14 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_15 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_16 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_17 VARCHAR(40) ,
      CUS_ATTR_USER_CAS_18 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_19 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_2 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_20 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_21 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_22 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_23 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_24 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_25 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_26 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_27 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_28 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_29 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_3 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_30 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_31 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_32 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_33 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_34 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_35 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_36 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_37 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_38 INTEGER,
      CUS_ATTR_USER_CAS_38_NAME VARCHAR(512) ,
      CUS_ATTR_USER_CAS_39 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_4 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_40 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_41 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_42 VARCHAR(40) ,
      CUS_ATTR_USER_CAS_43 VARCHAR(40) ,
      CUS_ATTR_USER_CAS_44 INTEGER,
      CUS_ATTR_USER_CAS_44_NAME VARCHAR(512) ,
      CUS_ATTR_USER_CAS_45 INTEGER,
      CUS_ATTR_USER_CAS_45_NAME VARCHAR(512) ,
      CUS_ATTR_USER_CAS_46 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_5 VARCHAR(40) ,
      CUS_ATTR_USER_CAS_6 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_7 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_8 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_9 VARCHAR(256) ,
      CUS_ATTR_USER_CAD_1 VARCHAR(40) ,
      SUPERVISOR_ID_NAME VARCHAR(512) )
 ;

CREATE TABLE MASTER_ENTERPRISE_USERS_201804 
     (
      ID INTEGER,
      IDC_GROUP_ID INTEGER,
      IDC_ID INTEGER,
      USER_ID VARCHAR(256) ,
      CREATION_DATE VARCHAR(40) ,
      DELETION_DATE VARCHAR(40) ,
      UNIQUE_ID VARCHAR(2000) ,
      DEPARTMENT VARCHAR(256) ,
      EMAIL_ADDRESS VARCHAR(256) ,
      FIRST_NAME VARCHAR(256) ,
      IS_TERMINATED INTEGER,
      JOB_STATUS VARCHAR(256) ,
      LAST_NAME VARCHAR(256) ,
      SUPERVISOR_ID INTEGER,
      "TITLE" VARCHAR(256) ,
      BUSINESS_UNIT_ID INTEGER,
      VIOLATION_COUNT INTEGER,
      EXCEPTION_COUNT INTEGER,
      TERMINATION_DATE VARCHAR(40) ,
      IS_DELETED INTEGER,
      BACKUP_SUPERVISOR INTEGER,
      BACKUP_SUPERVISOR_NAME VARCHAR(512) ,
      ADD_STATE INTEGER,
      REMOVE_STATE INTEGER,
      SUPERVISOR_ID_NAME VARCHAR(512) ,
      CUS_ATTR_USER_CAD_1 VARCHAR(40) ,
      CUS_ATTR_USER_CAS_1 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_10 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_11 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_12 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_13 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_14 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_15 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_16 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_17 VARCHAR(40) ,
      CUS_ATTR_USER_CAS_18 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_19 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_2 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_20 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_21 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_22 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_23 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_24 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_25 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_26 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_27 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_28 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_29 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_3 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_30 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_31 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_32 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_33 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_34 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_35 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_36 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_37 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_38 INTEGER,
      CUS_ATTR_USER_CAS_38_NAME VARCHAR(512) ,
      CUS_ATTR_USER_CAS_39 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_4 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_40 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_41 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_42 VARCHAR(40) ,
      CUS_ATTR_USER_CAS_43 VARCHAR(40) ,
      CUS_ATTR_USER_CAS_44 INTEGER,
      CUS_ATTR_USER_CAS_44_NAME VARCHAR(512) ,
      CUS_ATTR_USER_CAS_45 INTEGER,
      CUS_ATTR_USER_CAS_45_NAME VARCHAR(512) ,
      CUS_ATTR_USER_CAS_46 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_5 VARCHAR(40) ,
      CUS_ATTR_USER_CAS_6 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_7 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_8 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_9 VARCHAR(256) )
 ;

CREATE TABLE MASTER_ENTERPRISE_USERS_201806 
     (
      ID INTEGER,
      IDC_GROUP_ID INTEGER,
      IDC_ID INTEGER,
      USER_ID VARCHAR(256) ,
      CREATION_DATE VARCHAR(40) ,
      DELETION_DATE VARCHAR(40) ,
      UNIQUE_ID VARCHAR(2000) ,
      DEPARTMENT VARCHAR(256) ,
      EMAIL_ADDRESS VARCHAR(256) ,
      FIRST_NAME VARCHAR(256) ,
      IS_TERMINATED INTEGER,
      JOB_STATUS VARCHAR(256) ,
      LAST_NAME VARCHAR(256) ,
      SUPERVISOR_ID INTEGER,
      "TITLE" VARCHAR(256) ,
      BUSINESS_UNIT_ID INTEGER,
      VIOLATION_COUNT INTEGER,
      EXCEPTION_COUNT INTEGER,
      TERMINATION_DATE VARCHAR(40) ,
      IS_DELETED INTEGER,
      BACKUP_SUPERVISOR INTEGER,
      BACKUP_SUPERVISOR_NAME VARCHAR(512) ,
      ADD_STATE INTEGER,
      REMOVE_STATE INTEGER,
      SUPERVISOR_ID_NAME VARCHAR(512) ,
      CUS_ATTR_USER_CAD_1 VARCHAR(40) ,
      CUS_ATTR_USER_CAS_1 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_10 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_11 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_12 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_13 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_14 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_15 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_16 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_17 VARCHAR(40) ,
      CUS_ATTR_USER_CAS_18 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_19 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_2 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_20 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_21 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_22 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_23 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_24 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_25 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_26 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_27 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_28 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_29 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_3 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_30 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_31 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_32 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_33 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_34 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_35 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_36 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_37 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_38 INTEGER,
      CUS_ATTR_USER_CAS_38_NAME VARCHAR(512) ,
      CUS_ATTR_USER_CAS_39 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_4 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_40 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_41 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_42 VARCHAR(40) ,
      CUS_ATTR_USER_CAS_43 VARCHAR(40) ,
      CUS_ATTR_USER_CAS_44 INTEGER,
      CUS_ATTR_USER_CAS_44_NAME VARCHAR(512) ,
      CUS_ATTR_USER_CAS_45 INTEGER,
      CUS_ATTR_USER_CAS_45_NAME VARCHAR(512) ,
      CUS_ATTR_USER_CAS_46 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_5 VARCHAR(40) ,
      CUS_ATTR_USER_CAS_6 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_7 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_8 VARCHAR(256) ,
      CUS_ATTR_USER_CAS_9 VARCHAR(256) )
;

CREATE TABLE mnem 
     (
      mnemonic VARCHAR(4) ,
      tran_id VARCHAR(4) ,
      type_cd VARCHAR(1) )
 ;

CREATE TABLE Mnemonic_app 
     (
      mnemonic VARCHAR(4) ,
      app_code VARCHAR(3) )
 ;

CREATE TABLE mnem_pymt 
     (
      mnemonic CHAR(4) )
 ;

CREATE TABLE mnem_sod 
     (
      mnem_a VARCHAR(4) ,
      mnem_b VARCHAR(5) )
 ;

CREATE TABLE ooadm_bess_account_resource_varid 
     (
      varid INTEGER,
      obsid INTEGER,
      account_guid VARCHAR(32) ,
      Office VARCHAR(3) ,
      dept VARCHAR(3) ,
      OFFICETYPE VARCHAR(10) ,
      RESOURCENAME VARCHAR(4) )
;

CREATE TABLE PCA500b 
     (
      OutputRowNum BIGINT,
      OutputColNum BIGINT,
      COVAR FLOAT,
      EIGENVAL FLOAT,
      EIGENVEC FLOAT)
;

CREATE TABLE "racf grpclus" 
     (
      "rowid" SMALLINT,
      racf_user_group VARCHAR(8) ,
      clusno TINYINT)
 ;

CREATE TABLE racf_class_xref 
     (
      cics_region_cd VARCHAR(7) ,
      "class" VARCHAR(8) ,
      region_type VARCHAR(1) ,
      global_region_cat VARCHAR(3) ,
      global_region_cd VARCHAR(3) ,
      global_region_desc VARCHAR(21) )
 ;

CREATE TABLE racf_group 
     (
      racf_user_id VARCHAR(8) ,
      racf_user_group VARCHAR(8) ,
      region_type VARCHAR(1) )
 
;

CREATE TABLE racf_group_02Jul2018 
     (
      racf_user_id VARCHAR(8) ,
      racf_user_group VARCHAR(8) ,
      region_type VARCHAR(1) )
 ;

CREATE TABLE racf_owners 
     (
      "User Group" VARCHAR(8) ,
      "Role Group Description" VARCHAR(24) ,
      Name VARCHAR(25) ,
      "Person Id" INTEGER,
      Division VARCHAR(35) ,
      "Person Source" VARCHAR(2) ,
      "Phone Number" VARCHAR(15) ,
      "Cost Ctr" INTEGER,
      Location VARCHAR(4) )
 ;

CREATE TABLE racf_trxn_app 
     (
      tran_id VARCHAR(4) ,
      app_code VARCHAR(3) ,
      upd_login VARCHAR(20) ,
      upd_dt VARCHAR(30) )
 ;

CREATE TABLE racf_trxn_auth 
     (
      "class" VARCHAR(8) ,
      "profile" VARCHAR(10) ,
      racf_user_group VARCHAR(8) ,
      "mode" VARCHAR(7) ,
      "type" VARCHAR(1) ,
      region_type VARCHAR(1) )
 ;

CREATE TABLE racf_trxn_doc 
     (
      tran_id VARCHAR(4) ,
      table_group VARCHAR(3) ,
      call_group VARCHAR(7) ,
      "comment" VARCHAR(50) )
 ;

CREATE TABLE racf_trxn_group 
     (
      "class" VARCHAR(8) ,
      "profile" VARCHAR(9) ,
      tran_id VARCHAR(4) ,
      region_type VARCHAR(1) )
 ;

CREATE TABLE racf_user 
     (
      racf_user_id VARCHAR(8) ,
      user_name VARCHAR(20) ,
      notused VARCHAR(20) )
;

CREATE TABLE racf_user_group_idf 
     (
      racf_user_group VARCHAR(8) ,
      installation_data VARCHAR(124) )
 ;

CREATE TABLE racf_user_group_idf_02Jul2018 
     (
      racf_user_group VARCHAR(8) ,
      installation_data VARCHAR(124) )
 ;

CREATE TABLE racf_user_sailpoint 
     (
      system_source VARCHAR(2) ,
      system_id VARCHAR(8) ,
      person_last_name VARCHAR(40) ,
      person_first_name VARCHAR(40) ,
      person_source VARCHAR(2) ,
      person_id VARCHAR(20) )
 ;

CREATE TABLE sarah 
     (
      Platform VARCHAR(38) ,
      "AD group name" VARCHAR(35) ,
      Owner VARCHAR(43) ,
      label1 TINYINT,
      label2 TINYINT,
      label3 TINYINT,
      label4 TINYINT,
      label5 TINYINT)
 ;

CREATE TABLE sarah_ad_groups 
     (
      GroupName VARCHAR(8) ,
      CN VARCHAR(80) )
 ;

CREATE TABLE sarah_ftp 
     (
      "Source Address" VARCHAR(15) ,
      "Destination Address" VARCHAR(19) ,
      "Count(Source Address)" VARCHAR(21) ,
      "Count(Destination Address)" VARCHAR(26) )
 ;

CREATE TABLE sarah_ftp_to_host 
     (
      "IP Address" VARCHAR(20) ,
      Hostname VARCHAR(100) )
 ;

CREATE TABLE "shaji ibm roles" 
     (
      seqno SMALLINT,
      "Entitlement Type" VARCHAR(4) ,
      "Role Name" VARCHAR(48) ,
      "Entitlements in Role" VARCHAR(12) )
 ;

CREATE TABLE SMF_AUS 
     (
      "DATE" VARCHAR(9) ,
      USERID VARCHAR(7) ,
      TRANNAME VARCHAR(4) ,
      APPLID VARCHAR(5) ,
      TRANS SMALLINT)
 ;

CREATE TABLE SMF_CICS_HIST 
     (
      "VTAM APPLICATION NAME" VARCHAR(8) ,
      "Date" VARCHAR(9) ,
      "Hour" TINYINT,
      "PROGRAM NAME" VARCHAR(8) ,
      "START TIME STAMP" VARCHAR(21) ,
      "TRANSACTION NAME" VARCHAR(4) ,
      "USER ID" VARCHAR(8) )
 ;

CREATE TABLE SMF_COM 
     (
      "DATE" VARCHAR(9) ,
      USERID VARCHAR(8) ,
      TRANNAME VARCHAR(4) ,
      APPLID VARCHAR(5) ,
      TRANS INTEGER)
 ;

CREATE TABLE SMF_EH2 
     (
      "DATE" VARCHAR(9) ,
      USERID VARCHAR(8) ,
      TRANNAME VARCHAR(4) ,
      APPLID VARCHAR(5) ,
      TRANS INTEGER)
 ;

CREATE TABLE SMF_EHZ 
     (
      "DATE" VARCHAR(9) ,
      USERID VARCHAR(8) ,
      TRANNAME VARCHAR(4) ,
      APPLID VARCHAR(5) ,
      TRANS INTEGER)
 ;

CREATE TABLE SMF_LON 
     (
      "DATE" VARCHAR(9) ,
      USERID VARCHAR(8) ,
      TRANNAME VARCHAR(4) ,
      APPLID VARCHAR(5) ,
      TRANS INTEGER)
 ;

CREATE TABLE SMF_NA1 
     (
      "DATE" VARCHAR(9) ,
      USERID VARCHAR(7) ,
      TRANNAME VARCHAR(4) ,
      APPLID VARCHAR(5) ,
      TRANS SMALLINT)
 ;

CREATE TABLE snow_a2i 
     (
      "u_business_service.sys_class_name" VARCHAR(16) ,
      "u_business_service.correlation_id" VARCHAR(32) ,
      u_business_service VARCHAR(75) ,
      "u_business_service.u_cmdb_ci_used_for" VARCHAR(17) ,
      "u_business_service.install_status" VARCHAR(9) ,
      "u_business_service.comments" VARCHAR(1023) ,
      "u_business_service.u_cmdb_ci_service_application_code" VARCHAR(3) ,
      "u_business_service.u_cmdb_ci_service_application_type" VARCHAR(19) ,
      "u_business_service.u_cmdb_ci_service_said" VARCHAR(11) ,
      "u_business_service.u_cmdb_ci_service_crown_jewels" VARCHAR(5) ,
      "u_business_service.u_cmdb_ci_service_resiliency" VARCHAR(5) ,
      "u_business_service.u_cmdb_ci_service_last_recertification_date" Date,
      "u_business_service.u_cmdb_business_unit" VARCHAR(44) ,
      "u_business_service.assigned_to.name" VARCHAR(39) ,
      "u_business_service.assigned_to.user_name" VARCHAR(13) ,
      "u_business_service.u_cmdb_owner_group" VARCHAR(27) ,
      "u_business_service.support_group" VARCHAR(27) ,
      "u_business_service.u_cmdb_owner_group.description" VARCHAR(98) ,
      "u_business_service.assigned_to.email" VARCHAR(37) ,
      "u_business_service.u_cmdb_business_owner" VARCHAR(43) ,
      "u_business_service.u_cmdb_business_owner.user_name" VARCHAR(16) ,
      "u_business_service.u_qs_cmdb_ci_managed_by" VARCHAR(3) ,
      "u_business_service.u_cmdb_ci_ci_used_by" VARCHAR(3) ,
      "u_business_service.u_cmdb_ci_criticality" VARCHAR(21) ,
      "u_business_service.sys_updated_by" VARCHAR(18) ,
      "u_business_service.sys_updated_on" Date,
      "u_business_service.sys_created_by" VARCHAR(18) ,
      "u_business_service.sys_created_on" Date,
      "u_configuration_item.sys_class_name" VARCHAR(26) ,
      "u_configuration_item.u_cmdb_ci_type" VARCHAR(22) ,
      "u_configuration_item.correlation_id" VARCHAR(37) ,
      u_configuration_item VARCHAR(75) ,
      "u_configuration_item.ip_address" VARCHAR(255) ,
      "u_configuration_item.u_cmdb_ci_used_for" VARCHAR(17) ,
      "u_configuration_item.install_status" VARCHAR(15) ,
      "u_configuration_item.location.name" VARCHAR(7) ,
      "u_configuration_item.location.country" VARCHAR(14) ,
      "u_configuration_item.location.parent.parent.full_name" VARCHAR(53) ,
      "u_configuration_item.location.city" VARCHAR(17) ,
      "u_configuration_item.location.street" VARCHAR(40) ,
      u_is_virtual VARCHAR(5) ,
      u_is_virtual_netgear VARCHAR(5) ,
      u_is_virtual_msd VARCHAR(5) ,
      "u_configuration_item.manufacturer" VARCHAR(25) ,
      u_hostname VARCHAR(100) ,
      "u_configuration_item.comments" VARCHAR(465) ,
      "u_configuration_item.u_cmdb_ci_criticality" VARCHAR(21) ,
      "u_configuration_item.u_cmdb_business_unit" VARCHAR(33) ,
      "u_configuration_item.u_cmdb_ci_ci_used_by" VARCHAR(3) ,
      "u_configuration_item.u_qs_cmdb_ci_managed_by" VARCHAR(7) ,
      "u_configuration_item.u_cmdb_owner_group" VARCHAR(28) ,
      "u_configuration_item.support_group" VARCHAR(27) ,
      u_device_type VARCHAR(26) ,
      u_storage_type VARCHAR(25) ,
      u_edition TINYINT,
      "u_configuration_item.vendor.vendor_type" VARCHAR(22) ,
      "u_configuration_item.vendor.vendor" VARCHAR(5) ,
      u_os TINYINT,
      u_os_version TINYINT,
      u_kernel_release VARCHAR(26) ,
      "u_configuration_item.sys_created_on" Date,
      "u_configuration_item.sys_created_by" VARCHAR(18) ,
      "u_configuration_item.sys_updated_by" VARCHAR(18) ,
      "u_configuration_item.sys_updated_on" Date)
 ;

CREATE TABLE snow_a2i_201801 
     (
      "u_business_service.sys_class_name" VARCHAR(16) ,
      "u_business_service.correlation_id" VARCHAR(32) ,
      u_business_service VARCHAR(75) ,
      "u_business_service.u_cmdb_ci_used_for" VARCHAR(17) ,
      "u_business_service.install_status" VARCHAR(9) ,
      "u_business_service.comments" VARCHAR(1023) ,
      "u_business_service.u_cmdb_ci_service_application_code" VARCHAR(3) ,
      "u_business_service.u_cmdb_ci_service_application_type" VARCHAR(19) ,
      "u_business_service.u_cmdb_ci_service_said" VARCHAR(11) ,
      "u_business_service.u_cmdb_ci_service_crown_jewels" VARCHAR(5) ,
      "u_business_service.u_cmdb_ci_service_resiliency" VARCHAR(5) ,
      "u_business_service.u_cmdb_ci_service_last_recertification_date" Date,
      "u_business_service.u_cmdb_business_unit" VARCHAR(44) ,
      "u_business_service.assigned_to.name" VARCHAR(39) ,
      "u_business_service.assigned_to.user_name" VARCHAR(13) ,
      "u_business_service.u_cmdb_owner_group" VARCHAR(27) ,
      "u_business_service.support_group" VARCHAR(27) ,
      "u_business_service.u_cmdb_owner_group.description" VARCHAR(98) ,
      "u_business_service.assigned_to.email" VARCHAR(37) ,
      "u_business_service.u_cmdb_business_owner" VARCHAR(43) ,
      "u_business_service.u_cmdb_business_owner.user_name" VARCHAR(16) ,
      "u_business_service.u_qs_cmdb_ci_managed_by" VARCHAR(3) ,
      "u_business_service.u_cmdb_ci_ci_used_by" VARCHAR(3) ,
      "u_business_service.u_cmdb_ci_criticality" VARCHAR(21) ,
      "u_business_service.sys_updated_by" VARCHAR(18) ,
      "u_business_service.sys_updated_on" Date,
      "u_business_service.sys_created_by" VARCHAR(18) ,
      "u_business_service.sys_created_on" Date,
      "u_configuration_item.sys_class_name" VARCHAR(26) ,
      "u_configuration_item.u_cmdb_ci_type" VARCHAR(22) ,
      "u_configuration_item.correlation_id" VARCHAR(37) ,
      u_configuration_item VARCHAR(75) ,
      "u_configuration_item.ip_address" VARCHAR(255) ,
      "u_configuration_item.u_cmdb_ci_used_for" VARCHAR(17) ,
      "u_configuration_item.install_status" VARCHAR(15) ,
      "u_configuration_item.location.name" VARCHAR(7) ,
      "u_configuration_item.location.country" VARCHAR(14) ,
      "u_configuration_item.location.parent.parent.full_name" VARCHAR(53) ,
      "u_configuration_item.location.city" VARCHAR(17) ,
      "u_configuration_item.location.street" VARCHAR(40) ,
      u_is_virtual VARCHAR(5) ,
      u_is_virtual_netgear VARCHAR(5) ,
      u_is_virtual_msd VARCHAR(5) ,
      "u_configuration_item.manufacturer" VARCHAR(25) ,
      u_hostname VARCHAR(16) ,
      "u_configuration_item.comments" VARCHAR(465) ,
      "u_configuration_item.u_cmdb_ci_criticality" VARCHAR(21) ,
      "u_configuration_item.u_cmdb_business_unit" VARCHAR(33) ,
      "u_configuration_item.u_cmdb_ci_ci_used_by" VARCHAR(3) ,
      "u_configuration_item.u_qs_cmdb_ci_managed_by" VARCHAR(7) ,
      "u_configuration_item.u_cmdb_owner_group" VARCHAR(28) ,
      "u_configuration_item.support_group" VARCHAR(27) ,
      u_device_type VARCHAR(26) ,
      u_storage_type VARCHAR(25) ,
      u_edition TINYINT,
      "u_configuration_item.vendor.vendor_type" VARCHAR(22) ,
      "u_configuration_item.vendor.vendor" VARCHAR(5) ,
      u_os TINYINT,
      u_os_version TINYINT,
      u_kernel_release VARCHAR(26) ,
      "u_configuration_item.sys_created_on" Date,
      "u_configuration_item.sys_created_by" VARCHAR(18) ,
      "u_configuration_item.sys_updated_by" VARCHAR(18) ,
      "u_configuration_item.sys_updated_on" Date)
 ;

CREATE TABLE snow_cmdb_export 
     (
      correlation_id VARCHAR(37) ,
      name VARCHAR(113) ,
      comments VARCHAR(1023) ,
      install_status VARCHAR(15) ,
      sys_class_name VARCHAR(26) ,
      u_cmdb_ci_type VARCHAR(22) ,
      u_cmdb_ci_used_for VARCHAR(17) ,
      assigned_to VARCHAR(39) ,
      u_cmdb_business_owner VARCHAR(43) ,
      u_cmdb_owner_group VARCHAR(29) ,
      support_group VARCHAR(27) ,
      u_qs_cmdb_ci_managed_by VARCHAR(7) ,
      u_cmdb_ci_ci_used_by VARCHAR(3) ,
      u_cmdb_business_unit VARCHAR(44) ,
      u_cmdb_ci_assetnum VARCHAR(8) ,
      location VARCHAR(7) ,
      u_cmdb_ci_criticality VARCHAR(21) ,
      maintenance_schedule VARCHAR(8) ,
      u_qs_cmdb_ci_discovery_scope VARCHAR(9) ,
      last_discovered Date,
      sys_updated_on Date,
      "ref_cmdb_ci_appl.edition" VARCHAR(100) ,
      "ref_cmdb_ci_net_app_server.u_cmdb_ci_net_app_server_appliance_product_name" VARCHAR(37) ,
      "ref_cmdb_ci_appl.version" VARCHAR(227) ,
      "ref_cmdb_ci_net_app_server.u_cmdb_ci_net_server_appliance_product_version" VARCHAR(24) ,
      vendor VARCHAR(43) ,
      "ref_cmdb_ci_net_app_server.u_cmdb_ci_net_server_appliance_vendor_name" VARCHAR(8) ,
      "ref_cmdb_ci_net_app_server.u_cmdb_ci_net_server_appliance_version_string" VARCHAR(40) ,
      "ref_cmdb_ci_msd.device_type" VARCHAR(25) ,
      "ref_cmdb_ci_netgear.device_type" VARCHAR(40) ,
      "ref_cmdb_ci_netgear.cpu_type" TINYINT,
      "ref_cmdb_ci_computer.cpu_type" VARCHAR(47) ,
      fqdn VARCHAR(43) ,
      manufacturer VARCHAR(39) ,
      "ref_cmdb_ci_computer.ram" INTEGER,
      model_id VARCHAR(58) ,
      "ref_cmdb_ci_server.host_name" VARCHAR(27) ,
      "ref_cmdb_ci_netgear.cpu_count" TINYINT,
      "ref_cmdb_ci_computer.cpu_count" SMALLINT,
      serial_number VARCHAR(124) ,
      "ref_cmdb_ci_computer.virtual" VARCHAR(5) ,
      "ref_cmdb_ci_storage_device.u_cmdb_ci_storage_device_virtual" VARCHAR(5) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_virtual" VARCHAR(5) ,
      "ref_cmdb_ci_network_adapter.virtual" VARCHAR(5) ,
      "ref_cmdb_ci_msd.u_cmdb_ci_msd_is_virtual" VARCHAR(5) ,
      "ref_cmdb_ci_computer.os" VARCHAR(50) ,
      "ref_cmdb_ci_computer.os_version" VARCHAR(40) ,
      "ref_cmdb_ci_appl_sap_system.kernel_release" TINYINT,
      "ref_cmdb_ci_linux_server.kernel_release" VARCHAR(39) ,
      u_cmdb_ci_url VARCHAR(254) ,
      "ref_cmdb_ci_db_ora_instance.oracle_home" TINYINT,
      "ref_cmdb_ci_db_ora_listener.oracle_home" TINYINT,
      "ref_cmdb_ci_db_mssql_database.database" TINYINT,
      "ref_cmdb_ci_db_mysql_instance.data_directory" TINYINT,
      "ref_cmdb_ci_db_mssql_instance.database" TINYINT,
      "ref_cmdb_ci_endpoint_ms_sql.database" TINYINT,
      "ref_cmdb_ci_appl.tcp_port" VARCHAR(26) ,
      u_cmdb_alias VARCHAR(254) ,
      "ref_cmdb_ci_service.u_cmdb_ci_service_application_code" VARCHAR(3) ,
      "ref_cmdb_ci_service.u_cmdb_ci_service_application_group" VARCHAR(53) ,
      "ref_cmdb_ci_service.u_cmdb_ci_service_application_type" VARCHAR(19) ,
      "ref_cmdb_ci_service.u_cmdb_ci_service_said" VARCHAR(12) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_dbcs" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_kvm" VARCHAR(5) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_circuit_type" VARCHAR(17) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_circuit_teloco_provider" VARCHAR(8) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_circuit_router" VARCHAR(27) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_circuit_mpls" VARCHAR(20) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_circuit_country" VARCHAR(31) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_circuit_city" VARCHAR(64) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_circuit_addr" VARCHAR(111) ,
      u_cmdb_ci_disaster_recover_method VARCHAR(18) ,
      u_cmdb_ci_high_availability VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_antivirusreq" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_backupreq" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_faultmonreq" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_logcomplreq" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_patchingreq" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_perfcapmgtreq" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_storagerepreq" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_swlicensereq" VARCHAR(5) ,
      mac_address VARCHAR(17) ,
      "ref_cmdb_ci_service.u_cmdb_ci_service_resiliency" VARCHAR(5) ,
      "ref_cmdb_ci_service.u_cmdb_ci_service_last_recertification_date" Date,
      "ref_cmdb_ci_server.u_cmdb_ci_server_standalonephysical" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_externalstoragereq" VARCHAR(5) ,
      "ref_cmdb_ci_net_app_server.u_cmdb_ci_net_server_appliance_type" VARCHAR(5) ,
      u_cmdb_ci_normalized_version VARCHAR(21) ,
      ip_address VARCHAR(255) ,
      u_cmdb_ci_dynamic_automation_flag VARCHAR(5) ,
      "ref_cmdb_ci_computer.os_service_pack" VARCHAR(14) ,
      "ref_cmdb_ci_service.u_cmdb_ci_service_crown_jewels" VARCHAR(5) ,
      "ref_cmdb_ci_appl_ibm_cics.u_cics_region_available" VARCHAR(9) ,
      "ref_cmdb_ci_appl_ibm_cics.u_cics_region_versions" TINYINT,
      "ref_cmdb_ci_netgear.u_network_device_size" VARCHAR(11) ,
      "ref_cmdb_ci_appl_ibm_cics.u_cics_region_type" VARCHAR(4) ,
      u_cmdb_ci_report_version VARCHAR(45) ,
      sys_created_on Date,
      sys_created_by VARCHAR(18) ,
      sys_updated_by VARCHAR(18) )
 ;

CREATE TABLE snow_cmdb_export_201801 
     (
      correlation_id VARCHAR(37) ,
      name VARCHAR(113) ,
      comments VARCHAR(1023) ,
      install_status VARCHAR(15) ,
      sys_class_name VARCHAR(26) ,
      u_cmdb_ci_type VARCHAR(22) ,
      u_cmdb_ci_used_for VARCHAR(17) ,
      assigned_to VARCHAR(39) ,
      u_cmdb_business_owner VARCHAR(43) ,
      u_cmdb_owner_group VARCHAR(29) ,
      support_group VARCHAR(27) ,
      u_qs_cmdb_ci_managed_by VARCHAR(7) ,
      u_cmdb_ci_ci_used_by VARCHAR(3) ,
      u_cmdb_business_unit VARCHAR(44) ,
      u_cmdb_ci_assetnum VARCHAR(8) ,
      location VARCHAR(7) ,
      u_cmdb_ci_criticality VARCHAR(21) ,
      maintenance_schedule VARCHAR(8) ,
      u_qs_cmdb_ci_discovery_scope VARCHAR(9) ,
      last_discovered Date,
      sys_updated_on Date,
      "ref_cmdb_ci_appl.edition" VARCHAR(100) ,
      "ref_cmdb_ci_net_app_server.u_cmdb_ci_net_app_server_appliance_product_name" VARCHAR(37) ,
      "ref_cmdb_ci_appl.version" VARCHAR(227) ,
      "ref_cmdb_ci_net_app_server.u_cmdb_ci_net_server_appliance_product_version" VARCHAR(24) ,
      vendor VARCHAR(43) ,
      "ref_cmdb_ci_net_app_server.u_cmdb_ci_net_server_appliance_vendor_name" VARCHAR(8) ,
      "ref_cmdb_ci_net_app_server.u_cmdb_ci_net_server_appliance_version_string" VARCHAR(40) ,
      "ref_cmdb_ci_msd.device_type" VARCHAR(25) ,
      "ref_cmdb_ci_netgear.device_type" VARCHAR(40) ,
      "ref_cmdb_ci_netgear.cpu_type" TINYINT,
      "ref_cmdb_ci_computer.cpu_type" VARCHAR(47) ,
      fqdn VARCHAR(43) ,
      manufacturer VARCHAR(39) ,
      "ref_cmdb_ci_computer.ram" INTEGER,
      model_id VARCHAR(58) ,
      "ref_cmdb_ci_server.host_name" VARCHAR(27) ,
      "ref_cmdb_ci_netgear.cpu_count" TINYINT,
      "ref_cmdb_ci_computer.cpu_count" SMALLINT,
      serial_number VARCHAR(124) ,
      "ref_cmdb_ci_computer.virtual" VARCHAR(5) ,
      "ref_cmdb_ci_storage_device.u_cmdb_ci_storage_device_virtual" VARCHAR(5) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_virtual" VARCHAR(5) ,
      "ref_cmdb_ci_network_adapter.virtual" VARCHAR(5) ,
      "ref_cmdb_ci_msd.u_cmdb_ci_msd_is_virtual" VARCHAR(5) ,
      "ref_cmdb_ci_computer.os" VARCHAR(50) ,
      "ref_cmdb_ci_computer.os_version" VARCHAR(40) ,
      "ref_cmdb_ci_appl_sap_system.kernel_release" TINYINT,
      "ref_cmdb_ci_linux_server.kernel_release" VARCHAR(39) ,
      u_cmdb_ci_url VARCHAR(254) ,
      "ref_cmdb_ci_db_ora_instance.oracle_home" TINYINT,
      "ref_cmdb_ci_db_ora_listener.oracle_home" TINYINT,
      "ref_cmdb_ci_db_mssql_database.database" TINYINT,
      "ref_cmdb_ci_db_mysql_instance.data_directory" TINYINT,
      "ref_cmdb_ci_db_mssql_instance.database" TINYINT,
      "ref_cmdb_ci_endpoint_ms_sql.database" TINYINT,
      "ref_cmdb_ci_appl.tcp_port" VARCHAR(26) ,
      u_cmdb_alias VARCHAR(254) ,
      "ref_cmdb_ci_service.u_cmdb_ci_service_application_code" VARCHAR(3) ,
      "ref_cmdb_ci_service.u_cmdb_ci_service_application_group" VARCHAR(53) ,
      "ref_cmdb_ci_service.u_cmdb_ci_service_application_type" VARCHAR(19) ,
      "ref_cmdb_ci_service.u_cmdb_ci_service_said" VARCHAR(12) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_dbcs" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_kvm" VARCHAR(5) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_circuit_type" VARCHAR(17) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_circuit_teloco_provider" VARCHAR(8) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_circuit_router" VARCHAR(27) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_circuit_mpls" VARCHAR(20) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_circuit_country" VARCHAR(31) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_circuit_city" VARCHAR(64) ,
      "ref_cmdb_ci_netgear.u_cmdb_ci_netgear_circuit_addr" VARCHAR(111) ,
      u_cmdb_ci_disaster_recover_method VARCHAR(18) ,
      u_cmdb_ci_high_availability VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_antivirusreq" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_backupreq" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_faultmonreq" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_logcomplreq" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_patchingreq" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_perfcapmgtreq" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_storagerepreq" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_swlicensereq" VARCHAR(5) ,
      mac_address VARCHAR(17) ,
      "ref_cmdb_ci_service.u_cmdb_ci_service_resiliency" VARCHAR(5) ,
      "ref_cmdb_ci_service.u_cmdb_ci_service_last_recertification_date" Date,
      "ref_cmdb_ci_server.u_cmdb_ci_server_standalonephysical" VARCHAR(5) ,
      "ref_cmdb_ci_server.u_cmdb_ci_server_externalstoragereq" VARCHAR(5) ,
      "ref_cmdb_ci_net_app_server.u_cmdb_ci_net_server_appliance_type" VARCHAR(5) ,
      u_cmdb_ci_normalized_version VARCHAR(21) ,
      ip_address VARCHAR(255) ,
      u_cmdb_ci_dynamic_automation_flag VARCHAR(5) ,
      "ref_cmdb_ci_computer.os_service_pack" VARCHAR(14) ,
      "ref_cmdb_ci_service.u_cmdb_ci_service_crown_jewels" VARCHAR(5) ,
      "ref_cmdb_ci_appl_ibm_cics.u_cics_region_available" VARCHAR(9) ,
      "ref_cmdb_ci_appl_ibm_cics.u_cics_region_versions" TINYINT,
      "ref_cmdb_ci_netgear.u_network_device_size" VARCHAR(11) ,
      "ref_cmdb_ci_appl_ibm_cics.u_cics_region_type" VARCHAR(4) ,
      u_cmdb_ci_report_version VARCHAR(45) ,
      sys_created_on Date,
      sys_created_by VARCHAR(18) ,
      sys_updated_by VARCHAR(18) )
 ;

CREATE TABLE "ssga orphans" 
     (
      PersonID INTEGER,
      Name VARCHAR(30) ,
      "index" VARCHAR(8) ,
      Email VARCHAR(35) ,
      "Person ID" INTEGER,
      "Person Source" VARCHAR(2) ,
      SVP VARCHAR(27) ,
      Supervisor VARCHAR(29) ,
      ISO VARCHAR(16) ,
      "Is Deleted" VARCHAR(3) ,
      "Is Terminated" VARCHAR(3) ,
      "Person Termination Date" VARCHAR(16) ,
      "Report Termination Status" VARCHAR(1) ,
      "Termination Date" VARCHAR(17) ,
      "Unique Id" VARCHAR(56) )
 ;

CREATE TABLE ssrp_racf_entitlements 
     (
      RESOURCE VARCHAR(44) ,
      "CLASS" VARCHAR(8) ,
      RESOURCE_TYPE VARCHAR(14) ,
      CONDITION_TYPE VARCHAR(7) ,
      CONDITION_ELEMENT VARCHAR(7) ,
      ID VARCHAR(8) ,
      ID_TYPE VARCHAR(10) ,
      ACCESS VARCHAR(7) )
 ;

CREATE TABLE ssrp_racf_group_flat 
     (
      owner_id VARCHAR(8) ,
      group_id VARCHAR(8) ,
      level TINYINT,
      path VARCHAR(2000) )
 ;

CREATE TABLE ssrp_racf_users 
     (
      USER_ID VARCHAR(8) ,
      OWNER_ID VARCHAR(8) ,
      INSTALL_DATA VARCHAR(200) ,
      CICS_OPIDENT VARCHAR(3) )
;

CREATE TABLE ssrp_racf_user_group_members 
     (
      GROUP_ID VARCHAR(8) ,
      USER_ID VARCHAR(8) ,
      OWNER_ID VARCHAR(8) ,
      SPECIAL VARCHAR(1) ,
      OPER VARCHAR(1) ,
      AUDITOR VARCHAR(1) )
 ;

CREATE TABLE TACACS 
     (
      Platform VARCHAR(38) ,
      "AD group name" VARCHAR(32) ,
      Owner VARCHAR(43) ,
      label1 TINYINT,
      label2 TINYINT,
      label3 TINYINT,
      label4 TINYINT,
      label5 TINYINT)
 ;

CREATE TABLE tblGroupCovar 
     (
      groupdn1 VARCHAR(500) ,
      groupdn2 VARCHAR(500) ,
      COVAR FLOAT)
;

CREATE TABLE "tech summ 2016" 
     (
      "Application Name" VARCHAR(69) ,
      "Application Description" VARCHAR(2139) ,
      "Application Code" VARCHAR(196) ,
      Division VARCHAR(87) ,
      "App Portfolio IT SVP Contact Info" VARCHAR(24) ,
      "App IT 
Contact Info" VARCHAR(72) ,
      "CMDB CIN#" TINYINT,
      "Application Mapping to Report/Audit" VARCHAR(250) ,
      "Is the Application in the Cloud? (Yes/No)" VARCHAR(53) ,
      "What date did the Application get deployed to the PRODUCTION Cloud?" VARCHAR(57) ,
      "Does the Application use Web Technologies?  (Yes/No)" VARCHAR(3) ,
      "Web Technologies 
In Use" VARCHAR(53) ,
      "Operating System" VARCHAR(145) )
 ;

CREATE TABLE "tech summ 2017" 
     (
      "Application Name" VARCHAR(69) ,
      "Application Description" VARCHAR(4000) ,
      "Application Code" VARCHAR(196) ,
      Division VARCHAR(132) ,
      "App Portfolio IT SVP Contact Info" VARCHAR(39) ,
      "App IT 
Contact Info" VARCHAR(74) ,
      "CMDB CIN#" VARCHAR(2154) ,
      "Application Mapping to Report/Audit" VARCHAR(34) ,
      "Is the Application in the Cloud? (Yes/No)" VARCHAR(53) ,
      "What date did the Application get deployed to the PRODUCTION Cloud?" VARCHAR(8) ,
      "What components are in the cloud?" TINYINT,
      "Does the Application use Web Technologies?  (Yes/No)" VARCHAR(29) ,
      "Web Technologies 
In Use" VARCHAR(53) ,
      "Operating System" VARCHAR(145) )
 ;

CREATE TABLE "tech summ short" 
     (
      "Application Name" VARCHAR(69) ,
      "Application Code" VARCHAR(196) ,
      Division VARCHAR(87) ,
      "App Portfolio IT SVP Contact Info" VARCHAR(24) ,
      "App IT 
Contact Info" VARCHAR(72) )
 ;

CREATE TABLE tech_summ_crown_servers 
     (
      ROW_GUID VARCHAR(1024) ,
      ROW_GUID_BYTE varbinary(16),
      UPDATE_GUARD INTEGER,
      AS_OF_TMS date,
      AS_AT_TMS date,
      CLASS_DESCRIPTION VARCHAR(40) ,
      CONFIGURATION_ITEM_NUMBER VARCHAR(40) ,
      CONFIGURATION_ITEM_NAME VARCHAR(60) ,
      OPERATING_ENVIRONMENT VARCHAR(20) ,
      STATUS VARCHAR(20) ,
      CI_DESCRIPTION VARCHAR(1000) ,
      APPLICATION_CODE VARCHAR(20) ,
      APPLICATION_TYPE VARCHAR(20) ,
      SAID VARCHAR(20) ,
      SSC_RESILIENCY VARCHAR(20) ,
      SSC_LASTRECERTDATE VARCHAR(20) ,
      BUSINESS_UNIT VARCHAR(40) ,
      OWNER VARCHAR(40) ,
      OWNER_ID VARCHAR(20) ,
      OWNER_GROUP VARCHAR(40) ,
      SUPPORT_GROUP VARCHAR(40) ,
      OWNER_GROUP_DESCRIPTION VARCHAR(100) ,
      CI_OWNER_GROUP_DEFAULT_PERSON VARCHAR(40) ,
      CI_OWNER_GROUP_DEFAULT_PERSON_ID VARCHAR(20) ,
      BUSINESS_OWNER VARCHAR(20) ,
      BUSINESS_OWNER_ID VARCHAR(20) ,
      MANAGED_BY VARCHAR(20) ,
      USED_BY VARCHAR(20) ,
      BUSINESS_IMPACT VARCHAR(20) ,
      BUSINESS_IMPACT_ID VARCHAR(20) ,
      IMPACTED_CI_CLASS_DESCRIPTION VARCHAR(40) ,
      IMPACTED_CI_NUMBER VARCHAR(40) ,
      IMPACTED_CI_NAME VARCHAR(100) ,
      IMPACTED_CI_OPERATING_ENVIRONMENT VARCHAR(20) ,
      IMPACTED_CI_STATUS VARCHAR(20) ,
      DATA_CENTER VARCHAR(20) ,
      IMPACTED_CI_COUNTRY VARCHAR(20) ,
      IMPACTED_CI_REGION VARCHAR(20) ,
      IMPACTED_CI_LOCATION VARCHAR(40) ,
      IMPACTED_CI_LOCATION_DESCRIPTION VARCHAR(100) ,
      IMPACTED_CI_VIRTUAL VARCHAR(20) ,
      IMPACTED_CI_MANUFACTURER VARCHAR(40) ,
      IMPACTED_CI_COMPUTERSYSTEM_NAME VARCHAR(40) ,
      IMPACTED_CI_DESCRIPTION VARCHAR(500) ,
      IMPACTED_CI_BUSINESS_IMPACT_ID VARCHAR(20) ,
      IMPACTED_CI_BUSINESS_UNIT VARCHAR(20) ,
      IMPACTED_CI_MANAGED_BY VARCHAR(20) ,
      IMPACTED_CI_OWNER_GROUP VARCHAR(40) ,
      IMPACTED_CI_SUPPORT_GROUP VARCHAR(40) ,
      NETWORK_DEVICE_TYPE VARCHAR(20) ,
      PRODUCT_NAME VARCHAR(60) ,
      VENDOR_NAME VARCHAR(40) ,
      OPERATINGSYSTEM_OSNAME VARCHAR(60) ,
      OPERATINGSYSTEM_OSVERSION VARCHAR(60) ,
      OPERATINGSYSTEM_KERNELVERSION VARCHAR(40) ,
      server_type VARCHAR(1) )
 ;

CREATE TABLE tech_summ_itgc_crown_servers 
     (
      ROW_GUID VARCHAR(1024) ,
      ROW_GUID_BYTE varbinary(16),
      UPDATE_GUARD INTEGER,
      AS_OF_TMS date,
      AS_AT_TMS date,
      CLASS_DESCRIPTION VARCHAR(40) ,
      CONFIGURATION_ITEM_NUMBER VARCHAR(40) ,
      CONFIGURATION_ITEM_NAME VARCHAR(60) ,
      OPERATING_ENVIRONMENT VARCHAR(20) ,
      STATUS VARCHAR(20) ,
      CI_DESCRIPTION VARCHAR(1000) ,
      APPLICATION_CODE VARCHAR(20) ,
      APPLICATION_TYPE VARCHAR(20) ,
      SAID VARCHAR(20) ,
      SSC_RESILIENCY VARCHAR(20) ,
      SSC_LASTRECERTDATE VARCHAR(20) ,
      BUSINESS_UNIT VARCHAR(40) ,
      OWNER VARCHAR(40) ,
      OWNER_ID VARCHAR(20) ,
      OWNER_GROUP VARCHAR(40) ,
      SUPPORT_GROUP VARCHAR(40) ,
      OWNER_GROUP_DESCRIPTION VARCHAR(100) ,
      CI_OWNER_GROUP_DEFAULT_PERSON VARCHAR(40) ,
      CI_OWNER_GROUP_DEFAULT_PERSON_ID VARCHAR(20) ,
      BUSINESS_OWNER VARCHAR(20) ,
      BUSINESS_OWNER_ID VARCHAR(20) ,
      MANAGED_BY VARCHAR(20) ,
      USED_BY VARCHAR(20) ,
      BUSINESS_IMPACT VARCHAR(20) ,
      BUSINESS_IMPACT_ID VARCHAR(20) ,
      IMPACTED_CI_CLASS_DESCRIPTION VARCHAR(40) ,
      IMPACTED_CI_NUMBER VARCHAR(40) ,
      IMPACTED_CI_NAME VARCHAR(100) ,
      IMPACTED_CI_OPERATING_ENVIRONMENT VARCHAR(20) ,
      IMPACTED_CI_STATUS VARCHAR(20) ,
      DATA_CENTER VARCHAR(20) ,
      IMPACTED_CI_COUNTRY VARCHAR(20) ,
      IMPACTED_CI_REGION VARCHAR(20) ,
      IMPACTED_CI_LOCATION VARCHAR(40) ,
      IMPACTED_CI_LOCATION_DESCRIPTION VARCHAR(100) ,
      IMPACTED_CI_VIRTUAL VARCHAR(20) ,
      IMPACTED_CI_MANUFACTURER VARCHAR(40) ,
      IMPACTED_CI_COMPUTERSYSTEM_NAME VARCHAR(40) ,
      IMPACTED_CI_DESCRIPTION VARCHAR(500) ,
      IMPACTED_CI_BUSINESS_IMPACT_ID VARCHAR(20) ,
      IMPACTED_CI_BUSINESS_UNIT VARCHAR(20) ,
      IMPACTED_CI_MANAGED_BY VARCHAR(20) ,
      IMPACTED_CI_OWNER_GROUP VARCHAR(40) ,
      IMPACTED_CI_SUPPORT_GROUP VARCHAR(40) ,
      NETWORK_DEVICE_TYPE VARCHAR(20) ,
      PRODUCT_NAME VARCHAR(60) ,
      VENDOR_NAME VARCHAR(40) ,
      OPERATINGSYSTEM_OSNAME VARCHAR(60) ,
      OPERATINGSYSTEM_OSVERSION VARCHAR(60) ,
      OPERATINGSYSTEM_KERNELVERSION VARCHAR(40) ,
      server_type VARCHAR(1) )
 ;

CREATE TABLE temp_role 
     (
      Division VARCHAR(40) ,
      "Role" VARCHAR(80) ,
      Racf_User_Group VARCHAR(8) ,
      "User Group Description" VARCHAR(80) )
;

CREATE TABLE tracey_firecall 
     (
      "row" TINYINT,
      match VARCHAR(6) )
 ;

CREATE TABLE tst_datetypes 
     (
      tst_date Date,
      tst_datetime date,
      tst_String VARCHAR(20) )
;

CREATE TABLE varcluster 
     (
      VARID INTEGER,
      ClusterID BIGINT)
;

CREATE TABLE vmask_ghr_peoplesoft_cdr_mgt_chain_2 
     (
      PERSON_SOURCE VARCHAR(2) ,
      PERSON_ID VARCHAR(6) ,
      UID VARCHAR(20) ,
      JOB_DESC_CD VARCHAR(6) ,
      JOB_DESCR VARCHAR(30) ,
      SUMMARY_TITLE VARCHAR(3) ,
      DEPT_NAME VARCHAR(30) ,
      SSLEVEL1CODE VARCHAR(8) ,
      SSLEVEL2CODE VARCHAR(8) ,
      SSLEVEL3CODE VARCHAR(8) ,
      SSLEVEL4CODE VARCHAR(8) ,
      SSLEVEL5CODE VARCHAR(8) ,
      SSLEVEL6CODE VARCHAR(9) ,
      MANAGER_ID VARCHAR(8) ,
      SVP_ID VARCHAR(8) ,
      EVP_ID VARCHAR(8) ,
      RPT_ISO_UID VARCHAR(8) ,
      C VARCHAR(25) ,
      ST VARCHAR(18) ,
      I VARCHAR(22) ,
      LOCATION VARCHAR(4) )
 ;

CREATE TABLE "war 2016" 
     (
      "Domain" VARCHAR(9) ,
      "Server Name" VARCHAR(15) ,
      "Local Role granting access" VARCHAR(16) ,
      "Group/User Name" VARCHAR(55) ,
      "Application running on server" VARCHAR(36) ,
      "App Code" VARCHAR(42) ,
      "Division associated with App" VARCHAR(38) ,
      "ID per windows" VARCHAR(10) ,
      "Full User name" VARCHAR(40) ,
      ssb_id INTEGER,
      cc_description VARCHAR(30) ,
      job_title VARCHAR(30) ,
      empl_class_desc VARCHAR(30) ,
      agency_name VARCHAR(40) ,
      "mgr_name 1" VARCHAR(27) ,
      "mgr_name 2" VARCHAR(27) ,
      "mgr_name 3" VARCHAR(25) ,
      "mgr_name 4" VARCHAR(19) ,
      "mgr_name 5" VARCHAR(19) ,
      "mgr_name 6" VARCHAR(19) ,
      cc INTEGER,
      "Cost Center Description" VARCHAR(30) ,
      "Type" VARCHAR(5) ,
      status VARCHAR(33) ,
      status_desc VARCHAR(19) ,
      termination_date VARCHAR(10) ,
      last_date_worked VARCHAR(9) ,
      "Full name" VARCHAR(21) ,
      "Retain/ Revoke" VARCHAR(6) ,
      "Justification for Retain" VARCHAR(64) ,
      Manager VARCHAR(19) ,
      "ID - number only" INTEGER)
 ;

CREATE TABLE "war ets2016" 
     (
      group_name VARCHAR(35) )
 ;

CREATE TABLE "war groups" 
     (
      "Group Name" VARCHAR(100) ,
      "Group with Domain" VARCHAR(100) ,
      "Group Status" VARCHAR(40) ,
      "Group Owner" VARCHAR(100) ,
      "Group owner SVP" VARCHAR(100) ,
      "ISO for business Unit" VARCHAR(100) )
 ;

CREATE TABLE "war priv groups 2017_08" 
     (
      Source VARCHAR(6) ,
      Server VARCHAR(15) ,
      "Role" VARCHAR(16) ,
      "Type" VARCHAR(5) ,
      "Group/User Name" VARCHAR(63) )
 ;

CREATE TABLE war_beyond_trust 
     (
      "Beyond Trust AD Group" VARCHAR(36) )
 ;

CREATE TABLE war_citrix 
     (
      Source VARCHAR(40) ,
      Server VARCHAR(40) ,
      "Group/User Name" VARCHAR(40) ,
      "Role" VARCHAR(40) ,
      "Type" VARCHAR(40) )
 ;

CREATE TABLE war_corp_ou 
     (
      organizationalUnit VARCHAR(176) ,
      objectTypeName VARCHAR(62) ,
      inheritedObjectTypeName VARCHAR(33) ,
      ActiveDirectoryRights VARCHAR(109) ,
      InheritanceType VARCHAR(15) ,
      ObjectType VARCHAR(36) ,
      InheritedObjectType VARCHAR(36) ,
      ObjectFlags VARCHAR(51) ,
      AccessControlType VARCHAR(5) ,
      IdentityReference VARCHAR(52) ,
      IsInherited VARCHAR(5) ,
      InheritanceFlags VARCHAR(31) ,
      PropagationFlags VARCHAR(31) )
 ;

CREATE TABLE war_corp_ou_hyena 
     (
      "User Name" VARCHAR(42) ,
      "Person Type" VARCHAR(2) ,
      "Person #" INTEGER,
      Cost_ctr INTEGER,
      Hierarchy_cd VARCHAR(9) ,
      "User Id" VARCHAR(11) ,
      Permission VARCHAR(28) ,
      "Group Name" VARCHAR(40) ,
      "DIRECT TO GROUP" VARCHAR(15) ,
      "Nested to" VARCHAR(15) ,
      "Nested Group Name" VARCHAR(41) ,
      "Nested to 2" VARCHAR(14) ,
      "Nested Group Name 2" VARCHAR(28) ,
      "Nested to 3" VARCHAR(14) ,
      "Nested Group Name 3" VARCHAR(41) ,
      "Nested to 4" VARCHAR(14) ,
      "Nested Group Name 4" VARCHAR(26) ,
      "Nested to 5" VARCHAR(14) ,
      "Nested Group Name 5" VARCHAR(26) ,
      label1 TINYINT,
      label2 TINYINT,
      label3 TINYINT,
      label4 TINYINT,
      label5 TINYINT,
      label6 TINYINT,
      label7 TINYINT,
      label8 TINYINT,
      label9 TINYINT,
      label10 TINYINT,
      label11 TINYINT,
      label12 TINYINT,
      label13 TINYINT,
      label14 TINYINT,
      label15 TINYINT,
      label16 TINYINT,
      label17 TINYINT,
      label18 TINYINT,
      label19 TINYINT)
 ;

CREATE TABLE war_domain 
     (
      name VARCHAR(47) ,
      dnsdomain VARCHAR(17) ,
      distinguishedname VARCHAR(115) ,
      description VARCHAR(85) )
 ;

CREATE TABLE war_local_admin_201803 
     (
      Source VARCHAR(6) ,
      Server VARCHAR(15) ,
      "Role" VARCHAR(16) ,
      "Type" VARCHAR(5) ,
      "Group/User Name" VARCHAR(65) )
 ;

CREATE TABLE war_local_admin_20180606_partial 
     (
      Source VARCHAR(6) ,
      Server VARCHAR(15) ,
      "Role" VARCHAR(16) ,
      "Type" VARCHAR(5) ,
      "Group/User Name" VARCHAR(65) )
 ;

CREATE TABLE war_priv_groups_2017_07 
     (
      Source VARCHAR(20) ,
      Server VARCHAR(40) ,
      "Role" VARCHAR(40) ,
      "Type" VARCHAR(20) ,
      "Group/User name" VARCHAR(100) )
 ;

CREATE TABLE war_priv_groups_2017_08 
     (
      Source VARCHAR(6) ,
      Server VARCHAR(15) ,
      "Role" VARCHAR(16) ,
      "Type" VARCHAR(5) ,
      "Group/User Name" VARCHAR(63) )
 ;

CREATE TABLE war_sas_admin 
     (
      Member VARCHAR(100) )
 ;

CREATE TABLE "weeks tran_id" 
     (
      tran_id VARCHAR(4) ,
      app_code VARCHAR(3) ,
      upd_login VARCHAR(7) ,
      upd_dt VARCHAR(30) )
 ;

CREATE TABLE "windows vdi users" 
     (
      "User ID" VARCHAR(7) ,
      "Full Name" VARCHAR(33) ,
      Department VARCHAR(30) )
 ;

CREATE TABLE "wpar server adstatus" 
     (
      "domain" VARCHAR(6) ,
      status VARCHAR(8) ,
      server VARCHAR(193) )
 ;

CREATE TABLE "wpar server corp late" 
     (
      server VARCHAR(11) ,
      "role" VARCHAR(16) ,
      objtype VARCHAR(5) ,
      groupname VARCHAR(56) )
 ;

CREATE TABLE "wpar server decert" 
     (
      "Key" VARCHAR(13) ,
      Status VARCHAR(32) ,
      "Completion Date" VARCHAR(11) ,
      "Bulk #" VARCHAR(9) ,
      WO VARCHAR(5) ,
      Application VARCHAR(68) ,
      "Physical Name" VARCHAR(25) ,
      "Virtual Name" VARCHAR(64) ,
      "Alias Name" VARCHAR(42) ,
      "Database" VARCHAR(37) ,
      "Type Decert Request Name" VARCHAR(34) ,
      "OS Type" VARCHAR(9) ,
      Environment VARCHAR(33) ,
      Hardware VARCHAR(59) ,
      "Decert Type" VARCHAR(25) ,
      "Serial Number" VARCHAR(43) ,
      "Sub Class" VARCHAR(18) ,
      Location VARCHAR(46) ,
      "Application Email - Application Request for Decertification" VARCHAR(78) ,
      "Requestor Email" VARCHAR(37) ,
      "Failover (from Servers and Contacts)" VARCHAR(29) ,
      "IOC Certified (from Servers and Contacts)" VARCHAR(13) ,
      "IOC Monitored (from Servers and Contacts)" VARCHAR(13) ,
      "Argis Status" VARCHAR(30) ,
      "CMDB Status" VARCHAR(11) ,
      "CIMS Code" VARCHAR(5) ,
      "Remedy Status" VARCHAR(13) ,
      "Primary Application Owner" VARCHAR(48) ,
      "Primary Owner Email" VARCHAR(255) ,
      "Secondary Application Owner" VARCHAR(8000) ,
      "Secondary Owner Email" VARCHAR(255) ,
      "Manager Application Owner" VARCHAR(41) ,
      "Manager Owner Email" VARCHAR(54) ,
      AppCode VARCHAR(10) ,
      BTS VARCHAR(17) ,
      "Month" VARCHAR(25) ,
      "Special Instructions" VARCHAR(558) ,
      "Bulk Type" VARCHAR(17) ,
      "Hostname Decerted" VARCHAR(64) ,
      "Serial Decerted" VARCHAR(43) ,
      "Hostname Decerted No Cancel/Dup" VARCHAR(64) ,
      "Aperture Row" VARCHAR(22) ,
      "Aperture Ticket" VARCHAR(22) ,
      "Aperture Status" VARCHAR(46) ,
      Expedite VARCHAR(54) ,
      FQDN VARCHAR(28) ,
      "IP ADDR" VARCHAR(14) ,
      ping VARCHAR(9) ,
      NOTES VARCHAR(130) ,
      label1 TINYINT,
      label2 TINYINT)
 ;

CREATE TABLE "wpar server deleted" 
     (
      "Business Type" VARCHAR(5) ,
      ISM VARCHAR(21) ,
      "Demand Dt" VARCHAR(10) ,
      BU VARCHAR(8) ,
      Geo VARCHAR(18) ,
      "Project Title" VARCHAR(200) ,
      Environment VARCHAR(4) ,
      Priority# VARCHAR(10) ,
      TP_ID VARCHAR(17) ,
      "GDD #" VARCHAR(17) ,
      OS VARCHAR(9) ,
      "Phy / VM" VARCHAR(10) ,
      PM VARCHAR(13) ,
      "DB?" VARCHAR(54) ,
      "MW?" VARCHAR(14) ,
      "MQ?" VARCHAR(10) ,
      "Design Exit Dt" VARCHAR(14) ,
      "Host Name" VARCHAR(11) ,
      "Virtual Name" VARCHAR(11) ,
      "ESX Name" VARCHAR(20) ,
      Phase VARCHAR(21) ,
      Activity VARCHAR(29) ,
      SA VARCHAR(55) )
 ;

CREATE TABLE "wpar server dmz late" 
     (
      server VARCHAR(9) ,
      "role" VARCHAR(14) ,
      objtype VARCHAR(5) ,
      groupname VARCHAR(48) )
 ;

CREATE TABLE "wpar server lanstatus" 
     (
      server VARCHAR(15) ,
      lanstatus VARCHAR(11) )
 ;

CREATE TABLE "wpar Xsuite User Groups" 
     (
      groupdn VARCHAR(200) )
 ;

CREATE TABLE wpar_2016_cmdb 
     (
      tech_sum_app_code VARCHAR(196) ,
      cmdb_app_code VARCHAR(20) ,
      SAID VARCHAR(20) ,
      cmdb_app_name VARCHAR(60) ,
      OPERATING_ENVIRONMENT VARCHAR(20) ,
      server_name VARCHAR(40) ,
      osname VARCHAR(60) ,
      "Role" VARCHAR(40) ,
      ad_group VARCHAR(100) ,
      "domain" VARCHAR(7) ,
      GROUPDN VARCHAR(500) )
 ;

CREATE TABLE wpar_2017_all_groups 
     (
      cmdb_cinum VARCHAR(80) ,
      cmdb_ciname VARCHAR(113) ,
      cmdb_status VARCHAR(14) ,
      ITDCIOPERATINGENV VARCHAR(17) ,
      cmdb_desc VARCHAR(2000) ,
      a2i_appcode VARCHAR(3) ,
      a2i_said VARCHAR(11) ,
      a2i_ciname VARCHAR(75) ,
      a2i_openv VARCHAR(17) ,
      "domain" VARCHAR(7) ,
      GROUPDN VARCHAR(500) ,
      "Group/User Name" VARCHAR(63) ,
      "Role" VARCHAR(16) ,
      Server VARCHAR(15) ,
      child VARCHAR(500) ,
      path VARCHAR(2000) ,
      apath VARCHAR(2000) )
 ;

CREATE TABLE wpar_2017_all_servers 
     (
      ROW_GUID VARCHAR(1024) ,
      ROW_GUID_BYTE varbinary(16),
      UPDATE_GUARD INTEGER,
      AS_OF_TMS date,
      AS_AT_TMS date,
      CLASS_DESCRIPTION VARCHAR(40) ,
      CONFIGURATION_ITEM_NUMBER VARCHAR(40) ,
      CONFIGURATION_ITEM_NAME VARCHAR(60) ,
      OPERATING_ENVIRONMENT VARCHAR(20) ,
      STATUS VARCHAR(20) ,
      CI_DESCRIPTION VARCHAR(1000) ,
      APPLICATION_CODE VARCHAR(20) ,
      APPLICATION_TYPE VARCHAR(20) ,
      SAID VARCHAR(20) ,
      SSC_RESILIENCY VARCHAR(20) ,
      SSC_LASTRECERTDATE VARCHAR(20) ,
      BUSINESS_UNIT VARCHAR(40) ,
      OWNER VARCHAR(40) ,
      OWNER_ID VARCHAR(20) ,
      OWNER_GROUP VARCHAR(40) ,
      SUPPORT_GROUP VARCHAR(40) ,
      OWNER_GROUP_DESCRIPTION VARCHAR(100) ,
      CI_OWNER_GROUP_DEFAULT_PERSON VARCHAR(40) ,
      CI_OWNER_GROUP_DEFAULT_PERSON_ID VARCHAR(20) ,
      BUSINESS_OWNER VARCHAR(20) ,
      BUSINESS_OWNER_ID VARCHAR(20) ,
      MANAGED_BY VARCHAR(20) ,
      USED_BY VARCHAR(20) ,
      BUSINESS_IMPACT VARCHAR(20) ,
      BUSINESS_IMPACT_ID VARCHAR(20) ,
      IMPACTED_CI_CLASS_DESCRIPTION VARCHAR(40) ,
      IMPACTED_CI_NUMBER VARCHAR(40) ,
      IMPACTED_CI_NAME VARCHAR(100) ,
      IMPACTED_CI_OPERATING_ENVIRONMENT VARCHAR(20) ,
      IMPACTED_CI_STATUS VARCHAR(20) ,
      DATA_CENTER VARCHAR(20) ,
      IMPACTED_CI_COUNTRY VARCHAR(20) ,
      IMPACTED_CI_REGION VARCHAR(20) ,
      IMPACTED_CI_LOCATION VARCHAR(40) ,
      IMPACTED_CI_LOCATION_DESCRIPTION VARCHAR(100) ,
      IMPACTED_CI_VIRTUAL VARCHAR(20) ,
      IMPACTED_CI_MANUFACTURER VARCHAR(40) ,
      IMPACTED_CI_COMPUTERSYSTEM_NAME VARCHAR(40) ,
      IMPACTED_CI_DESCRIPTION VARCHAR(500) ,
      IMPACTED_CI_BUSINESS_IMPACT_ID VARCHAR(20) ,
      IMPACTED_CI_BUSINESS_UNIT VARCHAR(20) ,
      IMPACTED_CI_MANAGED_BY VARCHAR(20) ,
      IMPACTED_CI_OWNER_GROUP VARCHAR(40) ,
      IMPACTED_CI_SUPPORT_GROUP VARCHAR(40) ,
      NETWORK_DEVICE_TYPE VARCHAR(20) ,
      PRODUCT_NAME VARCHAR(60) ,
      VENDOR_NAME VARCHAR(40) ,
      OPERATINGSYSTEM_OSNAME VARCHAR(60) ,
      OPERATINGSYSTEM_OSVERSION VARCHAR(60) ,
      OPERATINGSYSTEM_KERNELVERSION VARCHAR(40) )
 ;

CREATE TABLE wpar_2017_cmdb 
     (
      tech_sum_app_code VARCHAR(196) ,
      cmdb_app_code VARCHAR(20) ,
      SAID VARCHAR(20) ,
      cmdb_app_name VARCHAR(60) ,
      OPERATING_ENVIRONMENT VARCHAR(20) ,
      server_name VARCHAR(40) ,
      osname VARCHAR(60) ,
      "Role" VARCHAR(40) ,
      ad_group VARCHAR(100) ,
      "domain" VARCHAR(7) ,
      GROUPDN VARCHAR(500) )
 ;

CREATE TABLE wpar_2018_all_groups_old 
     (
      cmdb_cinum VARCHAR(37) ,
      cmdb_ciname VARCHAR(113) ,
      cmdb_status VARCHAR(15) ,
      itdcioperatingenv VARCHAR(17) ,
      cmdb_desc VARCHAR(1024) ,
      a2i_appcode VARCHAR(3) ,
      a2i_said VARCHAR(11) ,
      a2i_ciname VARCHAR(75) ,
      a2i_openv VARCHAR(17) ,
      "domain" VARCHAR(7) ,
      GROUPDN VARCHAR(500) ,
      "Group/User Name" VARCHAR(63) ,
      "Role" VARCHAR(16) ,
      Server VARCHAR(15) ,
      child VARCHAR(500) ,
      path VARCHAR(2000) ,
      apath VARCHAR(2000) )
 ;

CREATE TABLE wpar_2018_all_users 
     (
      cmdb_cinum VARCHAR(37) ,
      cmdb_ciname VARCHAR(113) ,
      cmdb_status VARCHAR(15) ,
      itdcioperatingenv VARCHAR(17) ,
      cmdb_desc VARCHAR(1024) ,
      a2i_appcode VARCHAR(3) ,
      a2i_said VARCHAR(11) ,
      a2i_ciname VARCHAR(75) ,
      a2i_openv VARCHAR(17) ,
      "domain" VARCHAR(7) ,
      "Group/User Name" VARCHAR(63) ,
      PERSON_EMPLOYEE_NUMBER VARCHAR(100) ,
      EMPLOYEE_TYPE VARCHAR(20) ,
      DISPLAY_NAME VARCHAR(100) ,
      "Role" VARCHAR(16) ,
      Server VARCHAR(15) )
 ;

CREATE TABLE wpar_2018_group_app_list 
     (
      groupdn VARCHAR(500) ,
      app_list VARCHAR(1000) )
;

CREATE TABLE wpar_2018_group_svr_list 
     (
      groupdn VARCHAR(500) ,
      svr_list VARCHAR(1000) )
;

CREATE TABLE wpar_2018_sas_groups 
     (
      Source VARCHAR(4) ,
      Server TINYINT,
      "Role" VARCHAR(3) ,
      "Type" VARCHAR(5) ,
      "Group/User Name" VARCHAR(40) )
 ;

CREATE TABLE wpar_2018_server_decert 
     (
      "Key" VARCHAR(13) ,
      Status VARCHAR(28) ,
      "Completion Date" VARCHAR(11) ,
      "Bulk #" VARCHAR(9) ,
      WO VARCHAR(12) ,
      Application VARCHAR(68) ,
      "Physical Name" VARCHAR(25) ,
      "Virtual Name" VARCHAR(64) ,
      "Alias Name" VARCHAR(42) ,
      "Database" VARCHAR(37) ,
      "Type Decert Request Name" VARCHAR(34) ,
      "OS Type" VARCHAR(9) ,
      Environment VARCHAR(14) ,
      Hardware VARCHAR(59) ,
      "Decert Type" VARCHAR(25) ,
      "Serial Number" VARCHAR(43) ,
      "Sub Class" VARCHAR(18) ,
      Location VARCHAR(54) ,
      "Application Email - Application Request for Decertification" VARCHAR(78) ,
      "Requestor Email" VARCHAR(37) ,
      "Failover (from Servers and Contacts)" VARCHAR(35) ,
      "IOC Certified (from Servers and Contacts)" VARCHAR(13) ,
      "IOC Monitored (from Servers and Contacts)" VARCHAR(13) ,
      "Argis Status" VARCHAR(30) ,
      "CMDB Status" VARCHAR(16) ,
      "CIMS Code" VARCHAR(21) ,
      "Remedy Status" VARCHAR(13) ,
      "Primary Application Owner" VARCHAR(48) ,
      "Primary Owner Email" VARCHAR(255) ,
      "Secondary Application Owner" VARCHAR(8000) ,
      "Secondary Owner Email" VARCHAR(255) ,
      "Manager Application Owner" VARCHAR(41) ,
      "Manager Owner Email" VARCHAR(54) ,
      AppCode VARCHAR(10) ,
      BTS VARCHAR(17) ,
      "Month" VARCHAR(25) ,
      "Special Instructions" VARCHAR(558) ,
      "Bulk Type" VARCHAR(17) ,
      "Hostname Decerted" VARCHAR(64) ,
      "Serial Decerted" VARCHAR(43) ,
      "Hostname Decerted No Cancel/Dup" VARCHAR(64) ,
      Expedite VARCHAR(54) ,
      FQDN VARCHAR(33) ,
      "IP ADDR" VARCHAR(30) ,
      ping VARCHAR(11) ,
      "Change Request" VARCHAR(11) ,
      "CI Number" VARCHAR(37) ,
      "Asset Tag" VARCHAR(10) ,
      "CMDB Phase 1 (In Stock)" VARCHAR(11) ,
      "CMDB Phase 2 (Retired)" VARCHAR(11) ,
      "CI Status Check" VARCHAR(15) ,
      "Remove Backups" VARCHAR(14) ,
      AUTOSYS VARCHAR(21) ,
      Tivoli VARCHAR(14) ,
      "IP Removal SR#" VARCHAR(22) ,
      "Storage Reclaim" VARCHAR(14) ,
      "H&E Request" VARCHAR(18) ,
      "Network Reclaim" VARCHAR(11) ,
      "Aperture Row" VARCHAR(22) ,
      "Aperture Ticket" VARCHAR(22) ,
      "Aperture Status" VARCHAR(46) ,
      NOTES VARCHAR(111) )
 ;

CREATE TABLE wpar_group_app_list 
     (
      groupdn VARCHAR(500) ,
      app_list VARCHAR(1000) )
;

CREATE TABLE wpar_group_app_list_o 
     (
      groupdn VARCHAR(500) ,
      app_list VARCHAR(1000) ,
      owner_list VARCHAR(1000) )
;

CREATE TABLE wpar_group_svr_list 
     (
      groupdn VARCHAR(500) ,
      svr_list VARCHAR(1000) )
;

CREATE TABLE wpar_server_lanstatus_2018 
     (
      server VARCHAR(15) ,
      lanstatus VARCHAR(11) )
 ;

CREATE TABLE wpar_ssrp_all_items 
     (
      "Reviewee Account Name" VARCHAR(18) ,
      "Group Name" VARCHAR(54) ,
      "Group Custom Attribute 1" VARCHAR(56) ,
      Status VARCHAR(12) ,
      "Reviewee First Name" VARCHAR(12) ,
      "Reviewee Last Name" VARCHAR(17) ,
      "Application Name" VARCHAR(28) ,
      "App Env" TINYINT,
      "Application Code" VARCHAR(3) ,
      "Ext App Code" TINYINT,
      AppRole VARCHAR(3) ,
      "App Role Code" TINYINT,
      "AppRole Type" TINYINT,
      "Role Custom Attribute 1" TINYINT,
      "Role Custom Attribute 2" TINYINT,
      "Role Custom Attribute 3" TINYINT,
      Entitlement VARCHAR(54) ,
      "Entitlement Custom Attribute 1" TINYINT,
      "Entitlement Custom Attribute 2" TINYINT,
      "Entitlement Custom Attribute 3" TINYINT,
      "Group Custom Attribute 2" TINYINT,
      "Group Custom Attribute 3" TINYINT,
      Comments TINYINT,
      "Review Result Name" VARCHAR(36) ,
      "Reviewee Account Description" TINYINT,
      "Reviewee Account Type" VARCHAR(4) ,
      "Reviewee Cost Center" INTEGER,
      "Reviewee Dept" VARCHAR(30) ,
      "Reviewee Full Name" VARCHAR(30) ,
      "Reviewee Hierarchy Code" VARCHAR(9) ,
      "Reviewee ISO Full Name" VARCHAR(28) ,
      "Reviewee Person ID" INTEGER,
      "Reviewee Person Type" VARCHAR(2) ,
      "Reviewee Termination Status" VARCHAR(1) ,
      "Reviewee User ID" VARCHAR(8) ,
      "State Street Agency" VARCHAR(44) ,
      "Assigned Reviewer Full Name" VARCHAR(30) ,
      "Assigned Reviewer Person ID" INTEGER,
      "Assigned Reviewer PersonType" VARCHAR(2) ,
      "Delegated Reviewer Full Name" VARCHAR(1) ,
      "Delegated Reviewer Person ID" TINYINT,
      "Delegated Reviewer PersonType" TINYINT,
      "Review Decision" VARCHAR(12) ,
      "Reviewer- Decision Date" TINYINT,
      "Reviewer with Sign-Off Full Name" VARCHAR(1) ,
      "Reviewer with Sign-Off Person ID" TINYINT,
      "Reviewer with Sign-off Date" TINYINT,
      "Reviewer with Sign-Off PersonType" TINYINT,
      RoleProvisionDate TINYINT,
      "Supervisor Full Name" VARCHAR(30) ,
      "SVP Full Name" VARCHAR(24) ,
      "SVP ID" INTEGER,
      "EVP Full Name" VARCHAR(21) ,
      "EVP ID" INTEGER)
 ;
GO
create view aadb_racf_roles as
select person_source, person_id, person_full_name, upper("role") as "role", role_desc, 'Approver' as approval from aadb_racf_roles_a a
union
select person_source, person_id, person_full_name, upper("role") as "role", role_desc, 'Owner' as approval from aadb_racf_roles_o o;
GO
create view "ad process accounts by appcode" as
select b.*,
a."application name", a."business evp", a."it cio direct report", a."IT Owner", a."IT Authorizing SVP"
from (
select businesscategory, count(*) idct from ad_account_7 
where employee_type='SY'
group by businesscategory) b
left join aiw_appcode a on upper(b.businesscategory)=a."application code";
GO
create view ADI_Accounts as
select 
AccountName,
case when PersonSource is null then 'EM' else PersonSource end as PersonSource,
Personid,
FirstName,
LastName,
EmailAddress,
AccountStatus,
'User' as AccountType,
null as LastLoginDate,
null as CustomAttrib1, 
null as CustomAttrib2,
null as CustomAttrib3, 
'ADI' as ApplicationID,
null as ExtensionAppID, 
null as CreationDate
from ADI_Common_2018
group by AccountName,PersonSource,Personid,
FirstName,
LastName,
EmailAddress,
AccountStatus

GO
create view ADI_Accounts_2018 as
select AccountName,
PersonSource,
PersonID,
FirstName, LastName,
EmailAddress, AccountStatus,
'User' as AccountType,
null as LastLoginDate,
null as CustomAttrib1, null as CustomAttrib2,
null as CustomAttrib3, 'ADI' as ApplicationID,
null as ExtensionAppID, null as CreationDate
from ADI_Common_2018
group by AccountName,
PersonSource,
PersonID,
FirstName, LastName,
EmailAddress, AccountStatus;
GO
create view ADI_accounts_2018_count as
select 'ADI' as ApplicationID,
'ADI_accounts.csv' as NameOfFile,
count(*)  as NumberofRecord,
cast(GETDATE() as VARCHAR(10)) as DateofFileCreation,
'DateofFileCreation' as CurrentDate
from ADI_accounts_2018;
GO
create view ADI_accounts_count as
select 'ADI' as ApplicationID,
'ADI_accounts.csv' as NameOfFile,
count(*)  as NumberofRecord,
cast(getdate() as VARCHAR(10)) as DateofFileCreation,
'DateofFileCreation' as CurrentDate
from ADI_accounts;
GO
create view ADI_accts_groups as
select accountname, groupname, 
/* min(customattrib1) as CustomAttrib1, null as CustomAttrib2,
null as CustomAttrib3 */
substring(groupname, 1,3) as CustomAttrib1,
substring(groupname, 4,3) as CustomAttrib2,
substring(groupname, 7, 3) as CustomAttrib3
from ADI_Common
group by accountname, groupname;
GO
/*
create view ADI_accts_groups_2 as
select distinct
(case when charindex(gm.member, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(gm.member, ',DC=corp,')>0 then 'CORP\'
when charindex(gm.member, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(gm.member, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(gm.member, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(gm.member, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(gm.member, ',DC=nj,DC=pfs,')>0 then 'PFS\'
else '' end)
 + gm.userid as AccountName,
/* (case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
else '' end)
 + g.samaccountname as GroupName, */
w."group/user name" as GroupName,
"apath" as CustomAttrib1,
null as CustomAttrib2,
null as CustomAttrib3
from
wpar_2017_all_groups w
inner join ad_group_6 g on w.child=g.groupdn
inner join ad_group_member_6 gm on w.child=gm.groupdn
inner join ad_account_2 a on gm.member=a.distinguished_name
where objtype='User' and (person_employee_number between '00000' and '999999')
and enabled_1='TRUE';
*/

GO
create view ADI_accts_groups_2018 as
select accountname, groupname, 
min(customattrib1) as CustomAttrib1,
min(customattrib2) as CustomAttrib2,
null as CustomAttrib3
from ADI_Common_2018
group by accountname, groupname;
GO
create view ADI_accts_groups_2018_count as
select 'ADI' as ApplicationID,
'ADI_accts_groups.csv' as NameOfFile,
count(*)  as NumberofRecord,
cast(getdate() as VARCHAR(10)) as DateofFileCreation,
'DateofFileCreation' as CurrentDate
from ADI_accts_groups_2018;
GO
create view ADI_accts_groups_count as
select 'ADI' as ApplicationID,
'ADI_accts_groups.csv' as NameOfFile,
count(*)  as NumberofRecord,
cast(getdate() as VARCHAR(10)) as DateofFileCreation,
'DateofFileCreation' as CurrentDate
from ADI_accts_groups;
GO
create view adi_accts_groups_d as
select
accountname, dense_rank() over (order by accountname) as id_d
,groupname, dense_rank() over (order by groupname) as grp_d
from adi_accts_groups;
GO
create view ADI_Common_2018_proof as
select
CustomAttrib2 as source,
groupname as "User Access Group",
AccountName,
Description,
CustomAttrib1 as "Policy Enforcement Group",
PersonSource,
PersonID,
FirstName,
LastName,
EmailAddress,
AccountStatus,
Supervisor_ID,
Supervisor_ID_Name,
SVP_ID,
SVP_Name,
EVP_ID,
EVP_Name
from ADI_Common_2018 a
left join wpar_person_mgr w on user_id=PersonSource+PersonID;
GO
create view ADI_groups as
select 
GroupName,
null as OwnerID,
'List' as GroupType,
null as GroupEmailAddress,
null as IsParentGroup,
'' as Description,
'Active' as GroupStatus,
/* null as CustomAttrib1,
null as CustomAttrib2,
null as CustomAttrib3 */
substring(groupname, 1,3) as CustomAttrib1,
substring(groupname, 4,3) as CustomAttrib2,
substring(groupname, 7,3) as CustomAttrib3
from adi_common
group by GroupName;
GO
/*
create view ADI_groups_2 as
select distinct
/* (case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
else '' end)
 + g.samaccountname */ w."group/user name" as GroupName,
null as OwnerID,
'List' as GroupType,
null as GroupEmailAddress,
null as IsParentGroup,
gp.Description as Description,
'Active' as GroupStatus,
apath /* "group/user name" */ as CustomAttrib1,
null /* "role" */ as CustomAttrib2,
null as CustomAttrib3
from
wpar_2017_all_groups w
inner join ad_group_6 gp on w.groupdn=gp.groupdn
inner join ad_group_6 g on w.child=g.groupdn
inner join ad_group_member_6 gm on w.child=gm.groupdn
inner join ad_account_2 a on gm.member=a.distinguished_name
where objtype='User' and (person_employee_number between '00000' and '999999')
and enabled_1='TRUE';
*/

GO
create view ADI_groups_2018 as
select 
GroupName,
null as OwnerID,
'List' as GroupType,
null as GroupEmailAddress,
null as IsParentGroup,
'' as Description,
'Active' as GroupStatus,
min(CustomAttrib1) as CustomAttrib1,
min(CustomAttrib2) as CustomAttrib2,
null as CustomAttrib3
from adi_common_2018
group by GroupName;
GO
create view ADI_groups_2018_count as
select 'ADI' as ApplicationID,
'ADI_groups.csv' as NameOfFile,
count(*)  as NumberofRecord,
cast(getdate() as VARCHAR(10)) as DateofFileCreation,
'DateofFileCreation' as CurrentDate
from ADI_groups_2018;
GO
create view ADI_groups_count as
select 'ADI' as ApplicationID,
'ADI_groups.csv' as NameOfFile,
count(*)  as NumberofRecord,
cast(getdate() as VARCHAR(10)) as DateofFileCreation,
'DateofFileCreation' as CurrentDate
from ADI_groups;
GO
create view ADI_process_2018_proof as
select
CustomAttrib2 as source,
groupname as "User Access Group",
AccountName,
Description,
CustomAttrib1 as "Policy Enforcement Group",
PersonSource,
PersonID,
FirstName,
LastName,
EmailAddress,
AccountStatus,
Supervisor_ID,
Supervisor_ID_Name,
SVP_ID,
SVP_Name,
EVP_ID,
EVP_Name
from ADI_process_2018 a
left join wpar_process_mgr w on user_id=PersonSource+PersonID;
GO
create view adp_snow_servers as 
select correlation_id, name, comments, install_status, sys_class_name, u_cmdb_ci_used_for,  
"u_business_service.sys_class_name","u_business_service.correlation_id","u_business_service.u_cmdb_ci_used_for", "u_business_service.install_status",  
"u_business_service.u_cmdb_ci_service_application_code"
from snow_cmdb_export sci 
left join snow_a2i a2i on a2i."u_configuration_item.correlation_id"=sci.correlation_id

where "u_business_service.correlation_id"
in (
'CI.BUSINESSAPPLICATION-0N9UL7L2C',	'CI.BUSINESSAPPLICATION-0O3I21W5A',	'CI.BUSINESSAPPLICATION-0O3I21VSI'
)
and a2i."u_business_service.install_status"='Installed' --and a2i."u_business_service.u_cmdb_ci_used_for" <>'DEVELOPMENT'
and sci.sys_class_name='Windows Server' and sci.install_status='Installed';
GO

create view [dbo].[MASTER_ENTERPRISE_USERS] AS SELECT * FROM MASTER_ENTERPRISE_USERS_201806;
GO
create view ad_account AS SELECT * FROM ad_account_201806;
GO
create view ad_account_7_fix as
select userid, employee_type, person_employee_number, substring(distinguished_name, charindex(distinguished_name, 'DC='), len(distinguished_name)-3) as forest,   
case when a.employee_type is null and a.person_employee_number is null
and len(a.userid)=7
and substring(a.userid,2,6) between '000000' and '999999'
 then left(m1.user_id,2) else '' end as "userid_type",
case when a.employee_type is null and a.person_employee_number is null
and len(a.userid)=7
and substring(a.userid,2,6) between '000000' and '999999'
 then substring(m1.user_id,3,6) 
 else ''  end as "userid_person",
case when a.employee_type is null and a.person_employee_number is not null
 then left(m2.user_id,2) 
else '' end as personid_type
from ad_account_7 a
left join master_enterprise_users m1 on substring(m1.user_id, 3,6)=substring(a.userid,2,6) and left(m1.user_id,2)<>'UN' and m1.is_terminated=0

left join master_enterprise_users m2 on substring(m2.user_id, 3,6)=a.person_employee_number and left(m2.user_id,2)<>'UN' and m2.is_terminated=0
--where as_of_tms>'2017-04-01 00:00:00'
--where person_employee_number is null
--where employeE_type is null and (userid_type <>'' or personid_type <> '');
where employeE_type is null --and (userid_type <>'' or personid_type <> '');

GO
create view ad_account_7_person as
select distinguished_name, userid, --employee_type, person_employee_number,    
(case when charindex(a.distinguished_name, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(a.distinguished_name, ',DC=corp,')>0 then 'CORP\'
when charindex(a.distinguished_name, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(a.distinguished_name, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(a.distinguished_name, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(a.distinguished_name, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(a.distinguished_name, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(a.distinguished_name, ',DC=dmz,DC=local')>0 then 'DMZ\'
when charindex(a.distinguished_name, ',DC=ssga,')>0 then 'SSGAROOT\'
when charindex(a.distinguished_name, ',DC=statestr,')>0 then 'STATESTR\'
else '' end)
 + a.userid as AccountName,
 case 
when charindex(a.distinguished_name, ',DC=dmz,DC=local')>0 --and substring(a.userid,1,1)='v'
 then (select employee_type from ad_account_7 ab where ab.userid=a.userid and charindex(ab.distinguished_name,',DC=corp,')>0)
when a.employee_type is null and a.person_employee_number is null
and m1.user_id is not null
 then left(m1.user_id,2) 
when a.employee_type is null and a.person_employee_number is not null
and m2.user_id is not null
 then left(m2.user_id,2)
else a.employee_type end as PersonSource, 
case when a.person_employee_number is null
--and len(a.userid)=7
and m1.user_id is not null
 then substring(m1.user_id,3,6) 
 else a.person_employee_number end as "PersonID",
case when charindex(a.display_name,',')>0  
 then ltrim(dbo.String_Split(a.display_name, ',',2 ))
 else ltrim(dbo.String_Split(a.display_name, ' ',1 )) end as FirstName,
case when charindex(a.display_name,',')>0  
 then ltrim(dbo.String_Split(a.display_name, ',',1 ))
 when charindex(a.display_name,' ')>0
then ltrim(rtrim(substring(a.display_name, (charindex(a.display_name,' ')+1), 3)))
 else '' end as LastName,
a.email_address as EmailAddress,
case when "enabled"='TRUE' then 'Active' else 'Inactive' end as AccountStatus
from ad_account_7 a
/*multiple join quality check on userid and person employee number for active persons*/
left join master_enterprise_users m1 on substring(m1.user_id, 3,6)=right(a.userid,6) and left(m1.user_id,2)<>'UN' and m1.is_terminated=0
left join master_enterprise_users m2 on substring(m2.user_id, 3,6)=a.person_employee_number and left(m2.user_id,2)<>'UN' and m2.is_terminated=0;
GO
create view ad_account_person as
select distinguished_name, userid, --employee_type, person_employee_number,    
(case when charindex(a.distinguished_name, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(a.distinguished_name, ',DC=corp,')>0 then 'CORP\'
when charindex(a.distinguished_name, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(a.distinguished_name, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(a.distinguished_name, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(a.distinguished_name, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(a.distinguished_name, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(a.distinguished_name, ',DC=dmz,DC=local')>0 then 'DMZ\'
when charindex(a.distinguished_name, ',DC=ssga,')>0 then 'SSGAROOT\'
when charindex(a.distinguished_name, ',DC=statestr,')>0 then 'STATESTR\'
else '' end)
 + a.userid as AccountName,
 case 
when charindex(a.distinguished_name, ',DC=dmz,DC=local')>0 --and substring(a.userid,1,1)='v'
 then (select employee_type from ad_account ab where ab.userid=a.userid and charindex(ab.distinguished_name,',DC=corp,')>0)
when a.employee_type is null and a.person_employee_number is null
and m1.user_id is not null
 then left(m1.user_id,2) 
when a.employee_type is null and a.person_employee_number is not null
and m2.user_id is not null
 then left(m2.user_id,2)
else a.employee_type end as PersonSource, 
case when a.person_employee_number is null
--and len(a.userid)=7
and m1.user_id is not null
 then substring(m1.user_id,3,6) 
 else a.person_employee_number end as "PersonID",
case when charindex(a.display_name,',')>0  
 then ltrim(dbo.String_Split(a.display_name, ',',2 ))
 else ltrim(dbo.String_Split(a.display_name, ' ',1 )) end as FirstName,
case when charindex(a.display_name,',')>0  
 then ltrim(dbo.String_Split(a.display_name, ',',1 ))
 when charindex(a.display_name,' ')>0
then ltrim(rtrim(substring(a.display_name, (charindex(a.display_name,' ')+1), 3)))
 else '' end as LastName,
a.email_address as EmailAddress,
case when "enabled"='TRUE' then 'Active' else 'Inactive' end as AccountStatus
from ad_account a
/*multiple join quality check on userid and person employee number for active persons*/
left join master_enterprise_users m1 on substring(m1.user_id, 3,6)=right(a.userid,6) and left(m1.user_id,2)<>'UN' and m1.is_terminated=0
left join master_enterprise_users m2 on substring(m2.user_id, 3,6)=a.person_employee_number and left(m2.user_id,2)<>'UN' and m2.is_terminated=0;
GO
create view ad_group AS SELECT * FROM ad_group_201806;
GO
create view ad_group_flat AS SELECT * FROM ad_group_flat_201806;
GO
create view ad_group_member AS SELECT * FROM ad_group_member_201806;
GO
create view ad_process_accounts as
select Userid,
"Distinguished_Name",
Person_employee_number,
BusinessCategory,
Description,
"Enabled",
PwdNeverExpires,
UserCannotCHangePwd,
WhenCreated,
PwdLastSet
 from ad_account_7
where employee_type='SY'
or person_employee_number='SYS000';
GO
create view "cmdb export" as
 select cinum, ciname, status, description, itdcioperatingenv, classification
 from cmdb_export_2017_08;
GO
create view cse_logon_id AS SELECT * FROM cse_logon_id_revert where id_type = 'N';
GO
create view DBA_Common_2018 as
select distinct accountname, groupname, 
description,
customattrib1, cast(customattrib2 as varchar(20)) as customattrib2
,personsource
,personid
,first_name as firstname
,last_name as lastname
,email_address as emailaddress, accountstatus
from dda_dms_2018_priv_dba;
GO
create view DBA_Common_2018_proof as
select
CustomAttrib2 as grantee_type,
groupname ,
AccountName,
--Description,
CustomAttrib1 as "Product",
PersonSource,
PersonID,
FirstName,
LastName,
EmailAddress,
AccountStatus,
Supervisor_ID,
Supervisor_ID_Name,
SVP_ID,
SVP_Name,
EVP_ID,
EVP_Name
from DDA_Common_2018 a
left join wpar_person_mgr w on user_id=PersonSource+PersonID;
GO
create view dda_2017_apmd_privs as


SELECT 
    s.server_nm,
	u.user_nm,  
	a.appl_nm, 
	aa.appl_dsc as description,
	u.subappl_nm, 
	u.role_nm, 
	r.db_type, 
	r.pub_id_grp_role--, 
 --	r.env_cd
FROM 
	cse_user_subappl u 
	inner join cse_appl_subappl a on u.subappl_nm = a.subappl_nm 
	inner join cse_role_details r on a.appl_nm = r.appl_nm AND u.role_nm = r.role_nm
	inner join cse_subappl_server s1 on s1.subappl_nm = u.subappl_nm
	inner join cse_server s on s1.server_nm=s.server_nm and r.db_type=s.product_nm
	inner join cse_appl aa on a.appl_nm=aa.appl_nm
WHERE u.role_nm = 'DATABASE ADMINISTRATION'
AND r.env_cd = 'P'
and s.server_nm in (select distinct db_name from dda_2017_privs);
GO
create view dda_2017_db2_privs as
(select * from dda_db2_2017_q1_privs
 union
 select * from dda_db2_2017_q2_privs
 union
 select * from dda_db2_2017_q3_privs);
GO
create view dda_2017_db2_privs_proof as
select d.*, u.install_data, e.user_id, e.first_name, e.last_name, e.email_address, 
e.Supervisor_ID,
e.Supervisor_ID_Name,
e.SVP_ID,
e.SVP_Name,
e.EVP_ID,
e.EVP_Name
from
dda_2017_db2_privs  d
 inner join ssrp_racf_users u on d.accountname=u.user_id
 inner join wpar_person_mgr e on e.user_id=substring(u.install_data,2,8);
GO
create view DDA_Accounts as
select 
AccountName,
PersonSource,
Personid,
FirstName,
LastName,
EmailAddress,
AccountStatus,
'User' as AccountType,
null as LastLoginDate,
null as CustomAttrib1, 
null as CustomAttrib2,
null as CustomAttrib3, 
'DDA' as ApplicationID,
null as ExtensionAppID, 
null as CreationDate
from DDA_Common_2018
group by AccountName,
PersonSource,
Personid,
FirstName,
LastName,
EmailAddress,
AccountStatus;
GO
create view DDA_Accounts_2018 as
select 
AccountName,
PersonSource,
Personid,
FirstName,
LastName,
EmailAddress,
AccountStatus,
'User' as AccountType,
null as LastLoginDate,
null as CustomAttrib1, 
null as CustomAttrib2,
null as CustomAttrib3, 
'DDA' as ApplicationID,
null as ExtensionAppID, 
null as CreationDate
from DDA_Common_2018
group by AccountName,
PersonSource,
Personid,
FirstName,
LastName,
EmailAddress,
AccountStatus;
GO
create view DDA_accounts_2018_count as
select 'DDA' as ApplicationID,
'DDA_accounts.csv' as NameOfFile,
count(*)  as NumberofRecord,
cast(getdate() as VARCHAR(10)) as DateofFileCreation,
'DateofFileCreation' as CurrentDate
from DDA_accounts_2018;
GO
create view DDA_accounts_count as
select 'DDA' as ApplicationID,
'DDA_accounts.csv' as NameOfFile,
count(*)  as NumberofRecord,
cast(getdate() as VARCHAR(10)) as DateofFileCreation,
'DateofFileCreation' as CurrentDate
from DDA_accounts;
GO
create view DDA_accts_groups as
select accountname, 
groupname, 
CustomAttrib1, CustomAttrib2,
null as CustomAttrib3
from DDA_Common_2018
group by accountname, 
groupname, 
CustomAttrib1, CustomAttrib2;
GO
create view DDA_accts_groups_2018 as
select accountname, 
groupname, 
CustomAttrib1, CustomAttrib2,
null as CustomAttrib3
from DDA_Common_2018
group by accountname, 
groupname, 
CustomAttrib1, CustomAttrib2;
GO
create view DDA_accts_groups_2018_count as
select 'DDA' as ApplicationID,
'DDA_accts_groups.csv' as NameOfFile,
count(*)  as NumberofRecord,
cast(getdate() as VARCHAR(10)) as DateofFileCreation,
'DateofFileCreation' as CurrentDate
from DDA_accts_groups_2018;
GO
create view DDA_accts_groups_count as
select 'DDA' as ApplicationID,
'DDA_accts_groups.csv' as NameOfFile,
count(*)  as NumberofRecord,
cast(getdate() as VARCHAR(10)) as DateofFileCreation,
'DateofFileCreation' as CurrentDate
from DDA_accts_groups_2018;
GO
create view DDA_Common as
select  p.db_name + '.' + upper(p.granted_role)  as native_role,
apmd.subappl_nm + '.' + apmd."role_nm" + '.' + apmd."pub_id_grp_role" as apmd_role,
case when apmd.subappl_nm is null then 'native_role' else apmd.subappl_nm + '.' + apmd."role_nm" end as groupname,
upper(p.grantee) as accountname,
p.product as CustomAttrib1,
case when apmd.subappl_nm is null then 'NATIVE' else 'APMD' end as CustomAttrib2,
substring(li.employee_id,1,2) as personsource, substring(li.employee_id,3,6) as personid, 
--e.first_nm as firstname, e.last_nm as lastname, e.email_addr as emailaddress, 
case when li.id_status='D' then 'Disabled' else 'Enabled' end as AccountStatus,
p.*, apmd.*, er.apath 
from 
(
SELECT 
    s.server_nm,
	u.user_nm,  
	a.appl_nm, 
	aa.appl_dsc as description,
	u.subappl_nm, 
	u.role_nm, 
	r.db_type, 
	upper(r.pub_id_grp_role) as pub_id_grp_role, 
 	r.env_cd
FROM 
	cse_user_subappl u 
	inner join cse_appl_subappl a on u.subappl_nm = a.subappl_nm 
	inner join cse_role_details r on a.appl_nm = r.appl_nm AND u.role_nm = r.role_nm
	inner join cse_subappl_server s1 on s1.subappl_nm = u.subappl_nm
	inner join cse_server s on s1.server_nm=s.server_nm and r.db_type=s.product_nm
	inner join cse_appl aa on a.appl_nm=aa.appl_nm
WHERE u.role_nm = 'DATABASE ADMINISTRATION'
--AND r.env_cd = 'P'
and s.server_nm in (select distinct db_name from dda_2017_privs)
) apmd

right outer join dda_2017_privs p on upper(p.grantee)=upper(apmd.user_nm) and p.db_name=apmd.server_nm
and ((upper(p.granted_role)=apmd.pub_id_grp_role) or
     (p.granted_role='sa_role' and apmd.pub_id_grp_role='SA_SSO' and apmd.env_cd='U' and p.product='SYBASE') or
     (p.granted_role='sso_role' and apmd.pub_id_grp_role='SA_SSO' and apmd.env_cd='U' and p.product='SYBASE'))
left join cse_logon_id li on upper(p.grantee)=upper(li.user_nm)
left join cse_employee e on li.employee_id=e.employee_id
left join cse_empl_rollup er on e.employee_id=er.emp
where (p.product = apmd.db_type) or (apmd.db_type is null) or (p.product is null);
GO
create view DDA_Common_2018_proof as
select
CustomAttrib2 as grantee_type,
groupname ,
AccountName,
--Description,
CustomAttrib1 as "Product",
PersonSource,
PersonID,
FirstName,
LastName,
EmailAddress,
AccountStatus,
Supervisor_ID,
Supervisor_ID_Name,
SVP_ID,
SVP_Name,
EVP_ID,
EVP_Name
from DDA_Common_2018 a
left join wpar_person_mgr w on user_id=PersonSource+PersonID;

GO
create view dda_db2_2017_q1_privs as
select DISTINCT
rgm.user_id as AccountName,
cast(e.GRANTEE as VARCHAR(20)) as Groupname,
'Mainframe/DB2' as CustomAttrib1,
cast('RACF' as VARCHAR(20)) /* e.db2inst + '.' + e."name" */ as CustomAttrib2,
null as CustomAttrib3
from dda_db2_q1_2017 e
       --inner join racf_user_group_idf g on e.grantee=g.racf_user_group --and e.id_type='USER_GROUP'
       inner join ssrp_racf_user_group_members rgm on e.grantee=rgm.group_id
       --left join racf_user u on e.grantee=u.racf_user_id --and e.id_type='USER'
       --left join ssrp_racf_users u1 on e.grantee=u1.user_id --and e.id_type='USER'
       --where 
--order by grantee, db2inst, name
union
select DISTINCT
e.GRANTEE as AccountName,
e.db2inst + '.' + e."name" as GroupName,
'Mainframe/DB2' as CustomAttrib1,
'NATIVE' as CustomAttrib2,
null as CustomAttrib3
from dda_db2_q1_2017 e
       --inner join racf_user_group_idf g on e.grantee=g.racf_user_group --and e.id_type='USER_GROUP'
       --inner join ssrp_racf_user_group_members rgm on e.grantee=rgm.group_id
       --left join racf_user u on e.grantee=u.racf_user_id --and e.id_type='USER'
       inner join ssrp_racf_users u1 on e.grantee=u1.user_id;
GO
create view dda_db2_2017_q2_privs as
select DISTINCT
rgm.user_id as AccountName,
cast(e.GRANTEE as VARCHAR(20)) as Groupname,
'Mainframe/DB2' as CustomAttrib1,
cast('RACF' as VARCHAR(20)) /* e.db2inst + '.' + e."name" */ as CustomAttrib2,
null as CustomAttrib3
from dda_db2_q2_2017 e
       --inner join racf_user_group_idf g on e.grantee=g.racf_user_group --and e.id_type='USER_GROUP'
       inner join ssrp_racf_user_group_members rgm on e.grantee=rgm.group_id
       --left join racf_user u on e.grantee=u.racf_user_id --and e.id_type='USER'
       --left join ssrp_racf_users u1 on e.grantee=u1.user_id --and e.id_type='USER'
       --where 
--order by grantee, db2inst, name
union
select DISTINCT
e.GRANTEE as AccountName,
e.db2inst  as GroupName,
'Mainframe/DB2' as CustomAttrib1,
'NATIVE' as CustomAttrib2,
null as CustomAttrib3
from dda_db2_q2_2017 e
       --inner join racf_user_group_idf g on e.grantee=g.racf_user_group --and e.id_type='USER_GROUP'
       --inner join ssrp_racf_user_group_members rgm on e.grantee=rgm.group_id
       --left join racf_user u on e.grantee=u.racf_user_id --and e.id_type='USER'
       inner join ssrp_racf_users u1 on e.grantee=u1.user_id;
GO
create view dda_db2_2017_q3_privs as
select DISTINCT
rgm.user_id as AccountName,
cast(e.GRANTEE as VARCHAR(20)) as Groupname,
'Mainframe/DB2' as CustomAttrib1,
cast('RACF' as VARCHAR(20)) /* e.db2inst + '.' + e."name" */ as CustomAttrib2,
null as CustomAttrib3
from dda_db2_q3_2017 e
       --inner join racf_user_group_idf g on e.grantee=g.racf_user_group --and e.id_type='USER_GROUP'
       inner join ssrp_racf_user_group_members rgm on e.grantee=rgm.group_id
       --left join racf_user u on e.grantee=u.racf_user_id --and e.id_type='USER'
       --left join ssrp_racf_users u1 on e.grantee=u1.user_id --and e.id_type='USER'
       --where 
--order by grantee, db2inst, name
union
select DISTINCT
e.GRANTEE as AccountName,
e.db2inst + '.' + e."dbname" as GroupName,
'Mainframe/DB2' as CustomAttrib1,
'NATIVE' as CustomAttrib2,
null as CustomAttrib3
from dda_db2_q3_2017 e
       --inner join racf_user_group_idf g on e.grantee=g.racf_user_group --and e.id_type='USER_GROUP'
       --inner join ssrp_racf_user_group_members rgm on e.grantee=rgm.group_id
       --left join racf_user u on e.grantee=u.racf_user_id --and e.id_type='USER'
       inner join ssrp_racf_users u1 on e.grantee=u1.user_id;
GO

create view dda_db2_q1_grantee as
select DISTINCT resource,access,grantee from (
select db2inst as resource,grantee,
case when CREATETABAUTH='Y' then 'CTBL ' else '' end as CTBL,
case when CREATETSAUTH='Y' then 'CTS ' else '' end as CTS,
case when DBADMAUTH='Y' then 'DBAD ' else '' end as DBAD,
case when DBCTRLAUTH='Y' then 'DBCT ' else '' end as DBCT,
case when DBMAINTAUTH='Y' then 'DBMA ' else '' end as DBMA,
case when DISPLAYDBAUTH='Y' then 'DISP ' else '' end as DISP,
case when DROPAUTH='Y' then 'DROP ' else '' end as "DROP",
case when IMAGCOPYAUTH='Y' then 'IMAG ' else '' end as IMAG,
case when LOADAUTH='Y' then 'LOAD ' else '' end as "LOAD",
case when REORGAUTH='Y' then 'REOR ' else '' end as REOR,
case when RECOVERDBAUTH='Y' then 'RECO ' else '' end as RECO,
case when REPAIRAUTH='Y' then 'REPA ' else '' end as REPA,
case when STARTDBAUTH='Y' then 'STAR ' else '' end as STAR,
case when STATSAUTH='Y' then 'STAT ' else '' end as "STAT",
case when STOPAUTH='Y' then 'STOP ' else '' end as STOP,
--,CAST ("name" + '(' + ltrim(CTBL +CTS +DBAD +DBCT +DBMA +DISP +"DROP" + IMAG +"LOAD" +REOR +RECO +REPA +STAR +"STAT" +STOP ) + ')'  AS VARCHAR(160))  
''AS access 
from dda_db2_q1_2017) e;

GO
create view dda_db2_q2_grantee as
select DISTINCT resource ,access,[grantee] from (
select db2inst as resource,grantee,
case when createdbaauth is null then '' else 'DBA ' end  a1,
case when createdbcauth is null then '' else 'DBC ' end  a2,
case when createaliasauth is null then '' else 'ALS ' end  a3,
case when sysadmauth is null then '' else 'ADM ' end  a4,
case when sysoprauth is null then '' else 'OPR ' end  a5,
case when sysctrlauth is null then '' else 'CTL ' end  a6,
--, cast(('(' + ltrim(a1 + a2 + a3 + a4 + a5 + a6) + ')') as varchar(60)) 
'' as access 
from dda_db2_q2_2017) e;
GO
create view dda_db2_q3_grantee as
select DISTINCT resource,access,grantee from (
select db2inst as resource,grantee,
case when insertauth ='Y' then 'INS ' else '' end  a1,
case when updateauth ='Y' then 'UPD ' else '' end  a2,
case when deleteauth ='Y' then 'DEL ' else '' end  a3,
case when alterauth ='Y' then 'ALT ' else '' end  a4,
--, cast(dbname + '(' + ltrim(a1 + a2 + a3 + a4 ) + ')' as varchar(60))  
'' as access 
from dda_db2_q3_2017) e;
GO

create view dda_db2_grantee as
select resource, access, 'DB2Q1' as appcode, grantee from dda_db2_q1_grantee
union
select resource, access, 'DB2Q2' as appcode, grantee from dda_db2_q2_grantee
union
select resource, access, 'DB2Q3' as appcode, grantee from dda_db2_q3_grantee;
GO
create view dda_db2_groups as
select resource, access, appcode, racf_user_group 
from dda_db2_grantee
inner join dsw_racf_user_group_idf on grantee=racf_user_group;
GO
create view dda_db2_users as
select distinct resource, access, appcode, g.racf_user_group, g.racf_user_id
from dda_db2_grantee  vg
inner join racf_group g on vg.grantee=g.racf_user_group 
inner join ssrp_racf_users u on g.racf_user_id=u.user_id 
union
select distinct resource, access, appcode, '' as racf_user_group, grantee as racf_user_id
from dda_db2_grantee  vg
inner join ssrp_racf_users u on vg.grantee=u.user_id;
GO
create view dda_db2_user_proof as
select distinct resource, access, appcode, gm.racf_user_group,
i.installation_data,
gm.racf_user_id
,u.install_data
,m.user_id, m.first_name, m.last_name, m.email_address,
Supervisor_ID,
Supervisor_ID_Name,
SVP_ID,
SVP_Name,
EVP_ID,
EVP_Name
from 
dda_db2_users gm
left join dsw_racf_user_group_idf i on gm.racf_user_group=i.racf_user_group
left join ssrp_racf_users u on gm.racf_user_id=u.user_id /* from SSRP */
inner join wpar_person_mgr m on substring(u.install_data,charindex(u.install_data,'<')+1,8)=m.user_id;
GO
/*
create view dda_dms_2018_access_groups as 
select distinct 
g.groupdn,
g.product as "source", g.grantee as "Policy Enforcement Group", adf."child", adf."path", adf."apath"
from  "dda_dms_2018_groups" g 
left join ad_group_flat adf on g.groupdn=adf.parent;
*/
GO-------------------------------------------------------------------------------------------------
create view dda_dms_2018_accts as
select  g.product, g.db_name, g.grantee_type, g.grantee, g.priv_or_role, g.permission, g.inst_name, 
case when l.employee_id is not null then 'APMD_LOGON'
 when a.accountname is not null /* and a.personsource<>'SY' */ then 'AD_ACCOUNT'
 when ps.user_id is not null then 'SSRP_USER' else null end as new_user_type,
case when new_user_type='APMD_LOGON' then l.employee_id
 when new_user_type='AD_ACCOUNT' then a.personsource + a.personID
 when new_user_type='SSRP_USER' then ps.user_id else null end as new_user_id,
case when new_user_type='APMD_LOGON' then 
	case when pa.first_name is null then e.first_nm else pa.first_name end
 when new_user_type='AD_ACCOUNT' then pd.first_name
 when new_user_type='SSRP_USER' then ps.first_name else null end as first_name,
case when new_user_type='APMD_LOGON' then
	case when pa.last_name is null then e.last_nm else pa.last_name end
 when new_user_type='AD_ACCOUNT' then pd.last_name
 when new_user_type='SSRP_USER' then ps.last_name else null end as last_name,
case when new_user_type='APMD_LOGON' then
	case when pa.email_address is null then e.email_addr else pa.email_address end
 when new_user_type='AD_ACCOUNT' then pd.email_address
 when new_user_type='SSRP_USER' then ps.email_address else null end as email_address,
case when (l.employee_id is not null and l.id_status='E')
 then case when l.id_type='N' then 'Active'
	when l.id_type='P' then 'Process'
	when l.id_type='F' then 'Firecall'
	when l.id_type='S' then 'Security'
	when l.id_type='D' then 'Daemon' else 'Unknown' end
 when (new_user_type='AD_ACCOUNT' and a."AccountStatus"='Active') then 'Active'
 when (new_user_type='SSRP_USER') then 
    case when upper(substring(g.grantee,8,1))='X' then 'X-ID'
     else 'Active' end
 when (new_user_type is null) then null
 else 'Inactive' end as AccountStatus
from dda_dms_2018_privs g
-- is this an APMD user_nm?
left join cse_logon_id l on upper(g.grantee)=upper(l.user_nm)  
left join cse_employee e on l.employee_id=e.employee_id			
left join wpar_person_mgr pa on l.employee_id=pa.user_id  
-- is this an AD account?
left join ad_account_person a on g.grantee_type in ('WINDOWS_USER','WINDOWS_LOGIN') 
 and upper(g.grantee)=upper(a.accountname)						/* grantee is AD account */
left join wpar_person_mgr pd on (a.PersonSource + a.PersonID)=pd.user_id
-- try lookup on 6 digits of grantee as personID
left join wpar_person_mgr ps on substring(ps.user_id,3,6)=substring(g.grantee,2,6);

GO
create view dda_dms_2018_all_group_members as
select 
(case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(g.groupdn, ',DC=dmz,DC=local')>0 then 'DMZ\'
when charindex(g.groupdn, ',DC=ssga,')>0 then 'SSGAROOT\'
when charindex(g.groupdn, ',DC=statestr,')>0 then 'STATESTR\'
else '' end)
 + g.samaccountname as GroupName,
a.AccountName,
g.Description as Description,
source as CustomAttrib1, -- no "policy enforcement group"
'AD Group' as CustomAttrib2,
case when a.PersonSource='Full time' then 'EM'
 when a.PersonSource='SYS000' then 'SY'
 else upper(ltrim(a.PersonSource)) end as PersonSource,
a.PersonID,
a.FirstName,
a.LastName,
a.EmailAddress,
a.AccountStatus
from dda_dms_2018_access_groups w
inner join ad_group g on w.child=g.groupdn
inner join ad_group_member gm on w.child=gm.groupdn
inner join ad_account_person a on gm.member=a.distinguished_name
where objtype='User' 
group by 1,2,3,4,5,6,7,8,9,10,11;
GO
create view dda_dms_2018_grantee as
select distinct p.db_name + '.' + upper(p.priv_or_role)  as native_role,
apmd.subappl_nm + '.' + apmd."role_nm" + '.' + apmd."pub_id_grp_role" as apmd_role,
case when apmd.subappl_nm is null then native_role else apmd.subappl_nm + '.' + apmd."role_nm" end as groupname,
upper(p.grantee) as accountname,
p.product as CustomAttrib1,
case when apmd.subappl_nm is null then 'NATIVE' else 'APMD' end as CustomAttrib2,
substring(li.employee_id,1,2) as personsource, substring(li.employee_id,3,6) as personid, 
case when li.id_status='D' then 'Disabled' else 'Enabled' end as AccountStatus,
p.*, apmd.* 
from  dda_dms_2018_privs_apmd as apmd
right outer join dda_dms_2018_privs p on upper(p.grantee)=upper(apmd.user_nm) and p.db_name=apmd.server_nm
and ((upper(p.priv_or_role)=apmd.pub_id_grp_role) or
     (p.priv_or_role='sa_role' and apmd.pub_id_grp_role='SA_SSO' and apmd.env_cd='U' and p.product='SYBASE') or
     (p.priv_or_role='sso_role' and apmd.pub_id_grp_role='SA_SSO' and apmd.env_cd='U' and p.product='SYBASE'))
left join cse_logon_id li on upper(p.grantee)=upper(li.user_nm)
where (p.product = apmd.db_type) or (apmd.db_type is null) or (p.product is null);
GO
create view dda_dms_2018_grantee_unknown as
select  distinct product, db_name, grantee_type, grantee from
dda_dms_2018_privs g
left join cse_logon_id l on upper(g.grantee)=upper(l.user_nm)
left join wpar_person_mgr p on substring(p.user_id,3,6)=substring(g.grantee,2,6)
left join ad_account_7 a on g.grantee_type in ('WINDOWS_USER','WINDOWS_LOGIN') and upper(dbo.String_Split(g.grantee,'\',2))=upper(a.userid)
left join ad_group_7 ag on g.grantee_type='WINDOWS_GROUP'  and upper(dbo.String_Split(g.grantee,'\',2))=upper(ag.samaccountname)
where l.user_nm is null and p.user_id is null and a.userid is null and ag.samaccountname is null;
GO
create view dda_dms_2018_groups as
select
(case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(g.groupdn, ',DC=dmz,DC=local')>0 then 'DMZ\'
when charindex(g.groupdn, ',DC=ssga,')>0 then 'SSGAROOT\'
when charindex(g.groupdn, ',DC=statestr,')>0 then 'STATESTR\'
else '' end)
 + g.samaccountname as GroupName,
p.product, p.db_name, p.grantee, p.priv_or_role, p.permission, p.inst_name, g.groupdn from
dda_dms_2018_privs p
inner join ad_group g on p.grantee_type='WINDOWS_GROUP'  and upper(grantee)=upper(GroupName)
where GroupName <> 'CORP\Domain Users';
GO
/*union of all direct database sources: MSSQL, ORACLE, SYSBASE and filtering out from dda_dms_2018_privs_filter*/

create view dda_dms_2018_privs as

select p.db_name, upper(p.product) as "product", p.grantee, p.grantee_type, upper(p.priv_or_role) as "priv_or_role", p.permission, p.inst_name from (
select db_name, product, grantee, grantee_type, priv_or_role, permission, inst_name from dda_dms_2018_privs_msft

union all

select db_name, product, grantee, grantee_type, priv_or_role, permission, inst_name from dda_dms_2018_privs_orcl

union all

select upper(ltrim(db_name)), product, grantee, grantee_type, priv_or_role, permission, inst_name from dda_dms_2018_privs_sybs

/*adding for test run, remove after test run*/

union all

select upper(ltrim(db_name)), product, grantee, grantee_type, priv_or_role, permission, inst_name from dda_dms_2018_privs_sybs_ais

) p

left join dda_dms_2018_privs_filter f on p.product=f.product and p.priv_or_role=f.priv_or_role
/*remove rows matched with dda_dms_2018_privs_filter */
where f.product is null
/* used to handle overflow roles > 60 char which resulted in db name as blank */
and p.db_name<>'';
GO
create view dda_dms_2018_priv_dba as
select p.*, 
case 
	when customattrib2='APMD' then
		case when role_nm='DATABASE ADMINISTRATION' then 1 else 0 end

	when customattrib2='NATIVE' then
		case 
			when customattrib1='MSSQL' then
				case when priv_or_role in ('SYSADMIN','DBA_SUPPORT','DBA_SECURITY','CONTROL SERVER') 
					then 1 else 0 end
			when customattrib1='SYBASE' then
				case when upper(priv_or_role) in ('SA_ROLE','SSO_ROLE','DBA_SUPPORT','DBA_SECURITY') 
					then 1 else 0 end
			when customattrib1='ORACLE' then
				case when priv_or_role in ('DBA','DBA_ROLE','DBA_SUPPORT','DBA_SECURITY') 
					then 1 else 0 end
		else 0 end

	else 0 end as is_dba
from dda_dms_2018_priv_recon p
where is_dba=1;
GO
create view dda_dms_2018_priv_recon as
select distinct p.db_name + '.' + (case when p.inst_name is null then '' else p.inst_name + '.' end) + upper(p.priv_or_role)  as native_role,
apmd.subappl_nm + '.' + apmd."role_nm" + '.' + apmd."pub_id_grp_role" as apmd_role,
case when apmd.subappl_nm is null then native_role else apmd.subappl_nm + '.' + apmd."role_nm" end as groupname,
upper(p.grantee) as accountname,
p.product as CustomAttrib1,
case when apmd.subappl_nm is null then 'NATIVE' else 'APMD' end as CustomAttrib2,
case when apmd.subappl_nm is null then c."comments" else apmd.description end as description,
substring(new_user_id,1,2) as personsource, substring(new_user_id,3,6) as personid, 
first_name, last_name, email_address,
AccountStatus,
grantee_type, new_user_type --p.*, 
--, apmd.*
,apmd.role_nm, p.priv_or_role
from  dda_dms_2018_privs_apmd as apmd
right outer join dda_dms_2018_accts p on upper(p.grantee)=upper(apmd.user_nm) and p.db_name=apmd.server_nm
and ((upper(p.priv_or_role)=upper(apmd.pub_id_grp_role)) or
     (p.priv_or_role='SA_ROLE' and apmd.pub_id_grp_role='SA_SSO' and apmd.env_cd='U' and p.product='SYBASE') or
     (p.priv_or_role='SSO_ROLE' and apmd.pub_id_grp_role='SA_SSO' and apmd.env_cd='U' and p.product='SYBASE'))
--left join cse_logon_id li on upper(p.grantee)=upper(li.user_nm)
left join snow_cmdb_export c on p.db_name=c."name" and u_cmdb_ci_used_for='PRODUCTION'
where (upper(p.product) = apmd.db_type) or (apmd.db_type is null) or (p.product is null);

GO
create view DDA_Common_2018_vw as
select distinct accountname, groupname, customattrib1, cast(customattrib2 as varchar(20)) as customattrib2
,personsource
,personid
,first_name as firstname
,last_name as lastname
,email_address as emailaddress, accountstatus
from dda_dms_2018_priv_recon
union
select distinct accountname, groupname, customattrib1, cast(customattrib2 as varchar(20)) as customattrib2
,personsource
,personid
,firstname
,lastname
,emailaddress, accountstatus
from dda_dms_2018_all_group_members
union
select racf_user_id as accountname,
case when racf_user_group='' then resource + '.' + appcode else racf_user_group end as groupname,
'DB2' as customattrib1,
cast((case when racf_user_group='' then 'NATIVE' else 'RACF' end) as varchar(20)) as customattrib2 
,substring(user_id,1,2) as personsource
,substring(user_id,3,6) as personid
,first_name as firstname
,last_name as lastname
,email_address as emailaddress, 'Enabled' as accountstatus
from dda_db2_user_proof
union
select racf_user_id as accountname,
racf_user_group as groupname,
'VSAM' as customattrib1,
cast('RACF' as varchar(20)) as customattrib2 
,substring(user_id,1,2) as personsource
,substring(user_id,3,6) as personid
,first_name as firstname
,last_name as lastname
,email_address as emailaddress, 'Enabled' as accountstatus
from dda_vsam_group_members_proof;
GO
create view dda_dms_2018_users as
select  g.product, g.db_name, g.grantee_type, g.grantee, g.priv_or_role, g.permission, g.inst_name, 
case when l.employee_id is not null then 'APMD_LOGON'
 when a.personsource is not null and a.personsource<>'SY' then 'AD_ACCOUNT'
 when ps.user_id is not null then 'SSRP_USER' else null end as new_user_type,
case when new_user_type='APMD_LOGON' then l.employee_id
 when new_user_type='AD_ACCOUNT' then a.personsource + a.personID
 when new_user_type='SSRP_USER' then ps.user_id else null end as new_user_id,
case when new_user_type='APMD_LOGON' then 
	case when pa.first_name is null then e.first_nm else pa.first_name end
 when new_user_type='AD_ACCOUNT' then pd.first_name
 when new_user_type='SSRP_USER' then ps.first_name else null end as first_name,
case when new_user_type='APMD_LOGON' then
	case when pa.last_name is null then e.last_nm else pa.last_name end
 when new_user_type='AD_ACCOUNT' then pd.last_name
 when new_user_type='SSRP_USER' then ps.last_name else null end as last_name,
case when new_user_type='APMD_LOGON' then
	case when pa.email_address is null then e.email_addr else pa.email_address end
 when new_user_type='AD_ACCOUNT' then pd.email_address
 when new_user_type='SSRP_USER' then ps.email_address else null end as email_address,
case when (l.employee_id is not null and l.id_status='E')
 then case when l.id_type='N' then 'Active'
	when l.id_type='P' then 'Process'
	when l.id_type='F' then 'Firecall'
	when l.id_type='S' then 'Security'
	when l.id_type='D' then 'Daemon' else 'Unknown' end
 when (new_user_type='AD_ACCOUNT' and a."AccountStatus"='Active')
	or (new_user_type='SSRP_USER') then 'Active'
 else 'Inactive' end as AccountStatus
from dda_dms_2018_privs g
-- is this an APMD user_nm?
left join cse_logon_id l on upper(g.grantee)=upper(l.user_nm)  
left join cse_employee e on l.employee_id=e.employee_id			
left join wpar_person_mgr pa on l.employee_id=pa.user_id  
-- is this an AD account?
left join ad_account_7_person a on g.grantee_type in ('WINDOWS_USER','WINDOWS_LOGIN') 
 and upper(g.grantee)=upper(a.accountname)						/* grantee is AD account */
left join wpar_person_mgr pd on (a.PersonSource + a.PersonID)=pd.user_id
-- try lookup on 6 digits of grantee as personID
left join wpar_person_mgr ps on substring(ps.user_id,3,6)=substring(g.grantee,2,6) /* 6-digit grantee lookup in SSRP */
 and upper(substring(g.grantee,8))<>'X'  /* exclude APMD "X-IDs" */
where new_user_id is not null;
GO
create view dda_dms_2018_users_proof as
select a.*,
e.first_nm as apmd_first_nm,
e.last_nm as apmd_last_nm,
e.resp_mgr_id as apmd_resp_mgr,
Supervisor_ID,
Supervisor_ID_Name,
SVP_ID,
SVP_Name,
EVP_ID,
EVP_Name
from dda_dms_2018_users a
left join wpar_person_mgr w on w.user_id=a.new_user_id
left join cse_employee e on a.new_user_id=e.employee_id;
GO
create view DDA_groups as
select 
GroupName,
null as OwnerID,
'List' as GroupType,
null as GroupEmailAddress,
null as IsParentGroup,
Description,
'Active' as GroupStatus,
CustomAttrib1,
CustomAttrib2,
null as CustomAttrib3
from DDA_common
group by 1,2,3,4,5,6,7,8,9,10;
GO
create view DDA_groups_2018 as
select 
GroupName,
null as OwnerID,
'List' as GroupType,
null as GroupEmailAddress,
null as IsParentGroup,
min(Description) as Description,
'Active' as GroupStatus,
CustomAttrib1,
CustomAttrib2,
null as CustomAttrib3
from DDA_common_2018
group by 1,2,3,4,5,7,8,9,10;
GO
create view DDA_groups_2018_count as
select 'DDA' as ApplicationID,
'DDA_groups.csv' as NameOfFile,
count(*)  as NumberofRecord,
cast(getdate() as VARCHAR(10)) as DateofFileCreation,
'DateofFileCreation' as CurrentDate
from DDA_groups_2018;
GO
create view DDA_groups_count as
select 'DDA' as ApplicationID,
'DDA_groups.csv' as NameOfFile,
count(*)  as NumberofRecord,
cast(getdate() as VARCHAR(10)) as DateofFileCreation,
'DateofFileCreation' as CurrentDate
from DDA_groups;
GO
create view dda_vsam_groups as
select DISTINCT * /* ltrim(RESOURCE) as resourcename */ 
from ssrp_racf_entitlements r
inner join dda_vsam_app_hlq a
on charindex(r.resource,a.hlq)=1
              where upper(ltrim("CLASS"))='DATASET'
              AND upper(ltrim(ACCESS ))<> 'NONE'
              AND upper(ltrim(ACCESS ))<> 'READ';
GO
create view dda_vsam_group_members as
select distinct resource, access, appcode, g.racf_user_group,
g.racf_user_id
from 
dda_vsam_groups  vg
left join dsw_racf_user_group g on vg.id=g.racf_user_group and vg.id_type='USER_GROUP';
GO
create view dda_vsam_group_members_proof as
select distinct resource, access, appcode, gm.racf_user_group,
i.installation_data,
gm.racf_user_id
,u.install_data
,m.user_id, m.first_name, m.last_name, m.email_address,
Supervisor_ID,
Supervisor_ID_Name,
SVP_ID,
SVP_Name,
EVP_ID,
EVP_Name
from 
dda_vsam_group_members gm
left join dsw_racf_user_group_idf i on gm.racf_user_group=i.racf_user_group
left join ssrp_racf_users u on gm.racf_user_id=u.user_id /* from SSRP */
inner join wpar_person_mgr m on substring(u.install_data,charindex(u.install_data,'<')+1,8)=m.user_id;
GO
create view dda_vsam_user_proof as
select distinct resource, access, appcode, g.racf_user_group,
i.installation_data
,racf_user_id
--,u.install_data
,m.user_id, m.first_name, m.last_name, m.email_address,
Supervisor_ID,
Supervisor_ID_Name,
SVP_ID,
SVP_Name,
EVP_ID,
EVP_Name

from 
dda_vsam_groups  vg
left join racf_user_group_idf i on vg.id=i.racf_user_group
left join racf_group g on vg.id=g.racf_user_group and vg.id_type='USER_GROUP'
left join ssrp_racf_users u on g.racf_user_id=u.user_id /* from SSRP */
inner join wpar_person_mgr m on substring(u.install_data,charindex(u.install_data,'<')+1,8)=m.user_id;
GO
create view dim_aadb_racf_user_group_roles as 

select x.*, installation_data from
(select 
"racf_user_group" + ' ' + "approval" + 's' as "RACF User Group Approval Group",
case when "role group description" = 'CICS User Group Exceptions' then upper(dbo.String_Split("role",'_',2))
 when "role group description" = 'CI200 Exception Group' then upper(dbo.String_Split("role",'_',3))
 when "role group description" = 'CI200 Non-Production Regions' then upper(dbo.String_Split("role",'_',3))
 when "role group description" = 'RACF Access Group' then upper(dbo.String_Split("role",'_',2))
 when "role group description" = 'CICS User Group Exceptions Owner' then upper(dbo.String_Split("role",'_',1))
 when "role group description" = 'CI200 Exception Group Owner' then upper(dbo.String_Split("role",'_',2))
 when "role group description" = 'CI200 Non-Production Regions Owner' then upper(dbo.String_Split("role",'_',2))
 when "role group description" = 'RACF Access Group Owner' then upper(dbo.String_Split("role",'_',3))
else null end as racf_user_group,
case when charindex("role group description", 'Owner')>0 then 'Owner' else 'Approver' end as approval,
 "person source", "person id",
 "name" as "person_full_name",
 "role", 
 "role description" as role_desc
 from "aadb approvers" a
 where racf_user_group is not null ) x
 
 left join racf_user_group_idf i on x.racf_user_group=i.racf_user_group;
 GO
create view dim_aadb_racf_user_group_roles1 as
  select 
 racf_user_group + ' ' + approval + 's' as "RACF User Group Approval Group",
 racf_user_group, installation_data, 
 "Approval",
 upper(r1) as r1, "person id" as person_id, "name" as person_full_name, upper("role") as "role", "role group description" as role_desc
  from   racf_user_group_idf g
  left join 
    (
  select dbo.String_Split ("role", '_', 1) as r1,
  "person id",
  "name",
  "role", case when charindex("role group description",'Owner')>0 then 'Owner' else 'Approver' end as approval,
  "role group description" from aadb_cics_approvers
  union 
  (
  select dbo.String_Split ("role", '_', 2) as r1,
   "person id",
  "name",
  "role", case when charindex("role group description",'Owner')>0 then 'Owner' else 'Approver' end as approval,
  "role group description" from aadb_cics_approvers
  )
  union
  (
  select dbo.String_Split ("role", '_', 3) as r1,
  "person id",
  "name",
  "role", case when charindex("role group description",'Owner')>0 then 'Owner' else 'Approver' end as approval,
  "role group description" from aadb_cics_approvers
  )
  union
  (
  select dbo.String_Split ("role", '_', 4) as r1,
  "person id",
  "name",
  "role", case when charindex("role group description",'Owner')>0 then 'Owner' else 'Approver' end as approval,
  "role group description" from aadb_cics_approvers
  )
 )
  c1 on g.racf_user_group=upper(r1)
  where r1 is not null
  
  and len(racf_user_Group)>3;
GO
create view dim_aadb_racf_user_group_roles2 as
 select 
 racf_user_group + ' ' + approval + 's' as "RACF User Group Approval Group",
 racf_user_group, installation_data, 
 "Approval",
 r1, person_id, person_full_name, "role", role_desc
  from   racf_user_group_idf g
  left join 
    (
  select dbo.String_Split ("role", '_', 1) as r1,
  person_id,
  person_full_name,
  "role", approval,
  role_desc from aadb_racf_roles
  union 
  (
  select dbo.String_Split ("role", '_', 2) as r1,
   person_id,
  person_full_name,
  "role", approval,
  role_desc from aadb_racf_roles
  )
  union
  (
  select dbo.String_Split ("role", '_', 3) as r1,
  person_id,
  person_full_name,
  "role", approval,
  role_desc from aadb_racf_roles
  )
  union
  (
  select dbo.String_Split ("role", '_', 4) as r1,
  person_id,
  person_full_name,
  "role", approval,
  role_desc from aadb_racf_roles
  )
 )
  c1 on g.racf_user_group=r1
  where r1 is not null
  
  and len(racf_user_Group)>3;
GO
create view dim_etd_ug_tg as
select distinct m.mnemonic,
tg.tran_id,
ta.racf_user_group, 
tg."class", 
tg."profile", 
tg.region_type as "type"  
from racf_trxn_auth ta
inner join racf_class_xref tx on ta."class"=tx."class" and tx.global_region_cat='MCH' and tx.region_type='P'
inner join racf_trxn_group tg on ta."class"=tg."class" and ta."profile"=tg."profile"
left join mnem m on tg.tran_id=m.tran_id
inner join racf_user_group_idf gi on ta.racf_user_group=gi.racf_user_group
inner join racf_trxn_app tap on tg.tran_id=tap.tran_id
where app_code='ETD';
GO
create view dim_iaa_ug_tg as
select distinct m.mnemonic,
tg.tran_id,
ta.racf_user_group, 
tg."class", 
tg."profile", 
tg.region_type as "type"  
from racf_trxn_auth ta
inner join racf_class_xref tx on ta."class"=tx."class" and tx.global_region_cat='MCH' and tx.region_type='P'
inner join racf_trxn_group tg on ta."class"=tg."class" and ta."profile"=tg."profile"
left join mnem m on tg.tran_id=m.tran_id
inner join racf_user_group_idf gi on ta.racf_user_group=gi.racf_user_group
inner join racf_trxn_app tap on tg.tran_id=tap.tran_id
where app_code='IAA';
GO
create view dim_lai_role_sum as
 select "role"  + ' RACF Role Production'  as "LAI Role Name", 
 case when count(pay_list) >0 then 'Y'  end as "Contains Payment"
 from lai_role_racf_group r
 left join dim_racf_user_group_sum s on r.racf_user_group=s.racf_user_group_i and pay_list is not null
 group by 1;
 GO
create view dim_racf_role_definitions as
  select "role" + ' RACF Role Production' as "Role Name", racf_user_group as "Entitlements in Role"
  from "lai_role_racf_group";
GO
create view dim_racf_user_group_app as
select distinct ta.racf_user_group, installation_data as racf_grp_dsc, tg."class", tg."profile", tg.tran_id, tg.region_type, app_code, m.mnemonic,
case when mp.mnemonic is not null then 'Y' end as pmt
from racf_trxn_auth ta
inner join racf_trxn_group tg on ta."class"=tg."class" and ta."profile"=tg."profile"
left join mnem m on tg.tran_id=m.tran_id
inner join racf_user_group_idf gi on ta.racf_user_group=gi.racf_user_group
left join racf_trxn_app tap on tg.tran_id=tap.tran_id
left join mnem_pymt mp on m.mnemonic=mp.mnemonic;
GO
create view dim_racf_user_group_mnem as
select distinct ta.racf_user_group, installation_data as racf_grp_dsc, app_code, m.mnemonic from racf_trxn_auth ta
inner join racf_trxn_group tg on ta."class"=tg."class" and ta."profile"=tg."profile"
inner join mnem m on m.tran_id=tg.tran_id
inner join racf_user_group_idf gi on ta.racf_user_group=gi.racf_user_group
inner join mnemonic_app ma on m.mnemonic=ma.mnemonic;
GO
create view dim_racf_user_group_sum as
select g.racf_user_group as "RACF User Group",
installation_data as "RACF Description of access given by RACF User Group",
installation_data + '0A'XC  
+ CASE WHEN app_list is null then '' else 'Provides access to Applications: (' + app_list + ')' + '0AXC' END 
+ CASE WHEN pay_list is null then '' else '<b>Payment Mnemonics: (' + pay_list + ')</b>' + '0AXC' END 
+ CASE WHEN mnem_list is null then '' else 'Mnemonics: (' + mnem_list + ')' + '0AXC' END 
as RACF_user_group_description,
 --rg.racf_user_group as racf_user_group_u, 
app_list as "Concatenated Applications",
mnem_list as "Concatenated Mnemonics/Transactions",
pay_list as "Concatenated Payment Transactions",
person_user as "Number of Users",
system_user as "Number of Process IDs"
 --, app_list, mnem_list, pay_list
from racf_user_group_idf g
full join (
select racf_user_group, 
sum(case when person_source='SY' then 1 else 0 end) as system_user,
sum(case when person_source<>'SY' then 1 else 0 end) as person_user
from racf_group gg
left join racf_user_sailpoint s on gg.racf_user_id=s.system_id
group by 1
) rg on rg.racf_user_group=g.racf_user_group
left join dim_racf_user_group_mnem_list m on g.racf_user_group=m.racf_user_group
left join dim_racf_user_group_app_list a on g.racf_user_group=a.racf_user_group
left join dim_racf_user_group_pay_list p on g.racf_user_group=p.racf_user_group;
GO
create view dim_racf_user_group_trxn_app as
GO
select distinct ta.racf_user_group, installation_data as racf_grp_dsc,  tg."class", tg."profile",  tg.tran_id, app_code, m.mnemonic,

case when mp.mnemonic is not null then 'Y' end as pmt

from racf_trxn_auth ta

inner join racf_trxn_group tg on ta."class"=tg."class" and ta."profile"=tg."profile"

left join mnem m on tg.tran_id=m.tran_id

inner join racf_user_group_idf gi on ta.racf_user_group=gi.racf_user_group

left join racf_trxn_app tap on tg.tran_id=tap.tran_id

left join mnem_pymt mp on m.mnemonic=mp.mnemonic;
GO
create view dim_role_racf_user_group as
select "business unit", outkey as "role",
mytoken as racf_user_group
 from 
 (select * from table (dbo.String_Split_split_to_table("LAI Roles"."role", "LAI Roles".racf_user_group, ',')
returns (outkey varchar(50), tokennum INTEGER, mytoken varchar(10))) as x) x 
inner join "LAI Roles" r on x.outkey=r."role";
GO
create view dim_sod_rules as --CICS_MNEM_SOD_X
(
select rule_no, mnem from (
select row_number() over (order by mnem_a, mnem_b) as rule_no, mnem_a as mnem -- CICS_MNEM_SOD_A
from mnem_sod
union
select row_number() over (order by mnem_a, mnem_b) as rule_no, mnem_b as mnem -- CICS_MNEM_SOD_B
from mnem_sod
) x
);
GO
create view dsw_racf_user_group as
select * from racf_group;
GO
create view dsw_racf_user_group_idf as
select * from racf_user_group_idf;
GO
create view ecms_doc_cp as
 select asset,  "source file name" as document, "service provider","service recipient" from dl_ml.ecms_usis_iis;
GO
create view "fttop ee fuzzyset" as 
 select t1.document, t1.entity 
 ,t1."fuzzyset result",t1."fuzzyset score"
 from dl_ml."fttop ee fuzzy" t1
 left outer join dl_ml."fttop ee fuzzy" t2 on t1.document=t2.document and t1."fuzzyset score"<t2."fuzzyset score"
 where t2."fuzzyset score" is null;
GO
create view "fttop ee fuzzywuzzy" as 
 select t1.document, t1.entity 
 ,t1."fuzzywuzzy result",t1."fuzzywuzzy score"
 from dl_ml."fttop ee fuzzy" t1
 left outer join dl_ml."fttop ee fuzzy" t2 on t1.document=t2.document and t1."fuzzywuzzy score"<t2."fuzzywuzzy score"
 where t2."fuzzywuzzy score" is null;
GO
create view gems_train as
select x.gem_id, tokennum, token,
case when tokennum<100 then 'NNP'
when tokennum=100 then '.'
else '' end as pos_tag,
case when tokennum=1 then 'B-NN'
when tokennum = lasttok then 'E-NN'
when tokennum < 100 then 'I-NN'
when tokennum = 100 then 'O'
else ''
end as chunk_tag,
case when tokennum=100 then 'O' 
when tokennum=101 then ''
else 'GEMS' end as entity
from
(select gem_id, tokennum, token from "gems-token" x
union
select gem_id, 100, '.'
from "gems"
union
select gem_id, 101, ''
from "gems"
) x
inner join
(select gem_id, max(tokennum) as lasttok from "gems-token" group by gem_id) y on x.gem_id=y.gem_id;
GO
create view MASTER_ENTERPRISE_USERS AS SELECT * FROM MASTER_ENTERPRISE_USERS_201806;
GO
create view racf_user_group_source as
select racf_user_id, racf_user_group, person_source from racf_Group g
inner join racf_user_sailpoint s on g.racf_user_id=s.system_id
where region_type='P'
and person_source<>'SY';
GO
create view racf_user_group_source_d as
select
racf_user_id, dense_rank() over (order by racf_user_id) as id_d
,racf_user_group, dense_rank() over (order by racf_user_group) as grp_d
,person_source, dense_rank() over (order by person_source) as src_d
from racf_user_group_source;
GO
create view SMF_ALL as
select 'EH2' as region, smf_eh2.*
union
select 'AUS' as region, smf_aus.*
union
select 'EHZ' as region, smf_ehz.*
union
select 'COM' as region, smf_com.*
union
select 'LON' as region, smf_lon.*
union
select 'NA1' as region, smf_na1.*;
GO
create view smf_denied as  
 select s.* from smf_cics_hist s
 left join smf_granted g on s."transaction name"=g."transaction name"
 and s."user id"=g."user id"
 where g."user id" is null;
GO
create view smf_granted as
 
 select s."transaction name", s."user id", count(*) grant_ct
 from smf_cics_hist s
 inner join dim_racf_user_group_trxn_app t on s."transaction name"=t.tran_id
 inner join racf_group g on t.racf_user_group=g.racf_user_group and s."user id"=g.racf_user_id
 --where g.racf_user_group is null
 group by 1,2;
 GO
create view SMF_TRAN_USER_SUM as
select 'AUS' as region, "date", "userid", "tranname", "applid", trans from SMF_AUS
union all
select 'COM' as region, "date", "userid", "tranname", "applid", trans from SMF_COM
union all
select 'EH2' as region, "date", "userid", "tranname", "applid", trans from SMF_EH2
union all
select 'EHZ' as region, "date", "userid", "tranname", "applid", trans from SMF_EHZ
union all
select 'LON' as region, "date", "userid", "tranname", "applid", trans from SMF_LON
union all
select 'NA1' as region, "date", "userid", "tranname", "applid", trans from SMF_NA1;
GO
create view snow_dbms as
select distinct sci.correlation_id /* as cmdb_cinum */, 
sci."name" /* as cmdb_ciname */, sys_class_name,
sci.install_status /* as cmdb_status */, 
sci.u_cmdb_ci_used_for /* as ITDCIOPERATINGENV */, 
left(sci.comments,80) as comments /* cmdb_desc */ 
--a2i."u_business_service.u_cmdb_ci_service_application_code" as appcode, 
--a2i."u_business_service.u_cmdb_ci_service_said" as said, 
--a2i."u_business_service" /* as a2i_ciname */, 
--a2i."u_business_service.u_cmdb_ci_used_for" /* as a2i_openv */
from snow_cmdb_export sci	-- Service Now CMDB Export CIs 
--left join snow_a2i a2i on a2i."u_configuration_item.correlation_id"=sci.correlation_id	-- Service Now Relationships Application to Infrastructure
where sys_class_name in (
'DB2 Catalog',
'DB2 Instance',
'MSFT SQL Instance',
'MS SQL DataBase',
'Oracle Catalog',
'Oracle Instance',
'Sybase Catalog',
'Sybase Instance')
and sci.install_status='Installed' and				-- Must be installed, not in Build or Decommission, etc.
(sci.u_cmdb_ci_used_for <>'DEVELOPMENT'			-- Used for any purpose other than Development
--Or (a2i."u_business_service.install_status"='Installed'  -- or an  Installed dependent application
    --and a2i."u_business_service.u_cmdb_ci_used_for"<>'DEVELOPMENT')
    );
GO
create view snow_open_db as    
select distinct 
sci.correlation_id as cmdb_cinum, 
sci."name" as cmdb_ciname, 
sci.install_status as cmdb_status, 
sci.u_cmdb_ci_used_for as ITDCIOPERATINGENV, 
left(sci.comments,80) as cmdb_desc, sci.sys_class_name from snow_cmdb_export sci	
where sci.sys_class_name in ('Oracle Catalog', 'Oracle Instance', 'MSFT SQL Instance', 'MS SQL DataBase','Sybase Catalog','Sybase Instance')
and sci.install_status='Installed'
and sci.u_cmdb_ci_used_for<>'DEVELOPMENT';
GO
create view snow_win_servers as
select distinct sci.correlation_id /* as cmdb_cinum */, 
sci."name" /* as cmdb_ciname */, 
sci.install_status /* as cmdb_status */, 
sci.u_cmdb_ci_used_for /* as ITDCIOPERATINGENV */, 
left(sci.comments,80) as comments /* cmdb_desc */, 
a2i."u_business_service.u_cmdb_ci_service_application_code" as appcode, 
a2i."u_business_service.u_cmdb_ci_service_said" as said, 
a2i."u_business_service" /* as a2i_ciname */, 
a2i."u_business_service.u_cmdb_ci_used_for" /* as a2i_openv */
from snow_cmdb_export sci	-- Service Now CMDB Export CIs 
left join snow_a2i a2i on a2i."u_configuration_item.correlation_id"=sci.correlation_id	-- Service Now Relationships Application to Infrastructure
where sci.sys_class_name='Windows Server'	-- Windows Servers
and sci.install_status='Installed' and				-- Must be installed, not in Build or Decommission, etc.
(sci.u_cmdb_ci_used_for <>'DEVELOPMENT'			-- Used for any purpose other than Development
Or (a2i."u_business_service.install_status"='Installed'  -- or an  Installed dependent application
    and a2i."u_business_service.u_cmdb_ci_used_for"<>'DEVELOPMENT'));
GO
create view snow_win_servers_in_stock as
select distinct sci.correlation_id /* as cmdb_cinum */, 
sci."name" /* as cmdb_ciname */, 
sci.install_status /* as cmdb_status */, 
sci.u_cmdb_ci_used_for /* as ITDCIOPERATINGENV */, 
left(sci.comments,80) as comments /* cmdb_desc */, 
a2i."u_business_service.u_cmdb_ci_service_application_code" as appcode, 
a2i."u_business_service.u_cmdb_ci_service_said" as said, 
a2i."u_business_service" /* as a2i_ciname */, 
a2i."u_business_service.u_cmdb_ci_used_for" /* as a2i_openv */
from snow_cmdb_export sci	-- Service Now CMDB Export CIs 
left join snow_a2i a2i on a2i."u_configuration_item.correlation_id"=sci.correlation_id	-- Service Now Relationships Application to Infrastructure
where sci.sys_class_name='Windows Server'	-- Windows Servers
and (sci.install_status= /* 'Installed') -- or sci.install_status= */ 'In Stock')				-- Must be installed, not in Build or Decommission, etc.
and (sci.u_cmdb_ci_used_for <>'DEVELOPMENT'			-- Used for any purpose other than Development
Or (a2i."u_business_service.install_status"='Installed'  -- or an  Installed dependent application
    and a2i."u_business_service.u_cmdb_ci_used_for"<>'DEVELOPMENT'));
GO
create view war_app_server as
select application_code as app_code, status, impacted_ci_computersystem_name as server_name 
from dgf_storage_v.ooa_dm_working_data_cmdb_appl_infra_2
where -- status='Production'
--and 
operatingsystem_osname like '%Windows%'
group by 1,2,3;
GO
create view war_beyond_trust_admin as
select distinct
'Power Broker Elevation' as source,
(case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS'
when charindex(g.groupdn, ',DC=dmz,DC=local')>0 then 'DMZ'
when charindex(g.groupdn, ',DC=ssga,')>0 then 'SSGAROOT'
when charindex(g.groupdn, ',DC=statestr,')>0 then 'STATESTR'
else '' end) as "server",
 ltrim(wbt."Beyond Trust AD Group") as "role",
 'Group' as "type",
 server + '\' + "role" as "group/user name"
from
war_beyond_trust wbt
inner join ad_group g on (wbt."Beyond Trust AD Group"=g.samaccountname);
GO
create view war_corp_ou_sas as
select distinct
(case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(g.groupdn, ',DC=dmz,DC=local')>0 then 'DMZ\'
else '' end)
 + w."group name" as "group/user name"
from war_corp_ou_hyena w
inner join ad_group_7 g on w."group name"=g."name";
GO
create view war_corp_ou_write as
select 
'CORP OU Admin' as source,
'AD' as server,
organizationalUnit as "role",
identityreference as "group/user name",
'Group' as "type"
from war_corp_ou
where (charindex(ActiveDirectoryRights,'Write')>0 or
charindex(ActiveDirectoryRights,'Create')>0 or
charindex(ActiveDirectoryRights,'Delete')>0 or
charindex(ActiveDirectoryRights,'All')>0 )
and accesscontroltype='Allow';
GO
create view war_domain_admin as
select distinct
'Active Directory Domain Admin' as source,
(case when dnsdomain= 'ad.imsi.com' then 'IMS-NT'
when dnsdomain= 'corp.statestr.com' then 'CORP'
when dnsdomain= 'statestr.com' then 'STATESTR'
when dnsdomain= 'ga.ssga.root' then 'GA'
when dnsdomain= 'ssga.root' then 'SSGAROOT'
when dnsdomain='dmz.local' then 'DMZ'
when dnsdomain='extssc.local' then 'EXTSSC'
--when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX'
--when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA'
--when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW'
--when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS'
else '' end) as "server",
 ltrim(w."name") as "role",
 'Group' as "type",
 server + '\' + ltrim(w."name") as "group/user name"
 from war_domain w
 where distinguishedname<>'Group not available'
 and "role" not like 'ROL_%';
 GO
--need to save version of view with date appended and create new view without join for future iterations
 create view war_local_admin as
 select * from war_local_admin_20180606_partial
 union all
 select * from war_local_admin_201803
 where server not in (select distinct server from war_local_admin_20180606_partial);
GO
create view war_local_admin_groups as
select distinct s.correlation_id ,s."name" , s.install_status , s.u_cmdb_ci_used_for , s.comments,
s.appcode, s.said, s.u_business_service, s."u_business_service.u_cmdb_ci_used_for",
case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(g.groupdn, ',DC=dmz,DC=local')>0 then 'DMZ\'
when charindex(g.groupdn, ',DC=ssga,')>0 then 'SSGAROOT\'
when charindex(g.groupdn, ',DC=statestr,')>0 then 'STATESTR\'
else '' end + g.samaccountname as "adgroup",
g.groupdn, wla."group/user name", wla."role", wla.server, wla."type" 
from snow_win_servers s
inner join "war_local_admin" wla on
dbo.String_Split(s."name", '.',1)=upper(wla.server)
and wla."type"='Group' and wla.source<>'GA'
left join ad_group g on upper("group/user name")=upper(adgroup);
GO
create view war_local_admin_groups_in_stock as
select distinct s.correlation_id ,s."name" , s.install_status , s.u_cmdb_ci_used_for , s.comments,
s.appcode, s.said, s.u_business_service, s."u_business_service.u_cmdb_ci_used_for",
case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(g.groupdn, ',DC=dmz,DC=local')>0 then 'DMZ\'
when charindex(g.groupdn, ',DC=ssga,')>0 then 'SSGAROOT\'
when charindex(g.groupdn, ',DC=statestr,')>0 then 'STATESTR\'
else '' end + g.samaccountname as "adgroup",
g.groupdn, wla."group/user name", wla."role", wla.server, wla."type" 
from snow_win_servers_in_stock s
inner join "war_local_admin" wla on
dbo.String_Split(s."name", '.',1)=upper(wla.server)
and wla."type"='Group' and wla.source<>'GA'
left join ad_group_7 g on upper("group/user name")=upper(adgroup);
GO
create view war_local_admin_users as	
select distinct
server + '\' + "role" as GroupName,
a.AccountName,
cast(null as VARCHAR(20)) as Description,
GroupName as CustomAttrib1,
'Windows Server Local Admin' as CustomAttrib2,
a.PersonSource,
a.personid,
a.FirstName,
a.LastName,
a.EmailAddress,
a.AccountStatus
from snow_win_servers s
inner join "war_local_admin" wla on
dbo.String_Split(s."name", '.',1)=upper(wla.server) and 
wla."type"='User' and wla.source<>'GA'
left join ad_account_7_person a on a.AccountName=wla."group/user name"
where left("Group/User Name",3)<>'S-1';
GO
create view war_pol_enf_groups as
select distinct source, "Group/User Name" as "Policy Enforcement Group",
case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(g.groupdn, ',DC=dmz,DC=local')>0 then 'DMZ\'
when charindex(g.groupdn, ',DC=ssga,')>0 then 'SSGAROOT\'
when charindex(g.groupdn, ',DC=statestr,')>0 then 'STATESTR\'
else '' end + g.samaccountname as "adgroup", g.groupdn

from
(select cast('Windows Server Local Admin' as VARCHAR(40)) as source, /* server,  "role", "type", */ "Group/User Name" from war_local_admin_groups
union
select source,  "Group/User Name" from war_domain_admin
union
select source,  "Group/User Name" from war_sas_admin_groups
union
select source,   ltrim("Group/User Name") as "Group/User Name" from war_citrix
union
select source, "Group/User Name" from war_beyond_trust_admin
/* union
select source,  "Group/User Name" from war_corp_ou_write */
) x
left join ad_group g on upper("group/user name")=upper(adgroup)
where left("Group/User Name",3)<>'NT '
and left("Group/User Name",3)<>'S-1';
GO
create view war_priv_groups as
select distinct x.*,
case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(g.groupdn, ',DC=dmz,DC=local')>0 then 'DMZ\'
else '' end as "domain", g.groupdn

from
(select cast('Local Admin' as VARCHAR(20)) as source, /* server,  "role", "type", */ "Group/User Name" from war_local_admin_groups
union
select source, /* server,  "role", "type", */  "Group/User Name" from war_domain_admin
union
select source, /* server,  "role", "type", */  "Group/User Name" from war_sas_admin
union
select source, /* server,  "role", "type", */  ltrim("Group/User Name") as "Group/User Name" from war_citrix
union
select source, /* server,  "role", "type", */  "Group/User Name" from war_corp_ou_write) x
left join ad_group_7 g on upper("group/user name")=upper("domain" + g.samaccountname)
where left("Group/User Name",3)<>'NT '
and left("Group/User Name",3)<>'S-1';
GO
create view war_sas_admin_groups as
select 
'SAS Admin' as source,
member as "group/user name" from war_sas_admin;
GO
create view war_sas_admin_old as
select distinct
'SAS Admin' as source,
(case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS'
when charindex(g.groupdn, ',DC=dmz,DC=local')>0 then 'DMZ'
when charindex(g.groupdn, ',DC=ssga,')>0 then 'SSGAROOT'
when charindex(g.groupdn, ',DC=statestr,')>0 then 'STATESTR'
else '' end) as "server",
'Admin' as "role",
'Group' as "type",
server + '\' + w."group name" as "group/user name"
from war_corp_ou_hyena w
inner join ad_group_7 g on w."group name"=g."name";
GO
create view war_sas_admin_users as
select distinct
'IMS-NT\AdminUsersAccounts' as GroupName,
a.AccountName,
cast(null as VARCHAR(20)) as Description,
GroupName as CustomAttrib1,
'SAS Admin' as CustomAttrib2,
a.personsource,
a.personid,
a.FirstName,
a.LastName,
a.EmailAddress,
a.AccountStatus
from ad_account_person a
where a.distinguished_name like '%,OU=AdminUsersAccounts,DC=ad,DC=imsi,DC=com';
GO
create view wpar_2016_access as
select cmdb_app_code, said, cmdb_app_name, operating_environment, server_name, "role", ad_group, path, member,
person_employee_number, a.userid, employee_type, display_name, department_name
from wpar_2016_cmdb w
inner join ad_group_flat g on w.groupdn=g.parent
inner join ad_Group_member_6 gm on g.child=gm.groupdn
inner join ad_account_2 a on gm.member=a.distinguished_name
where gm.objtype='User'
and upper(employee_type)<>'SY';
GO
create view wpar_2017_access as
select cmdb_app_code, said, cmdb_app_name, operating_environment, server_name, "role", ad_group, path, member,
person_employee_number, a.userid, employee_type, display_name, department_name
from wpar_2017_cmdb w
inner join ad_group_flat g on w.groupdn=g.parent
inner join ad_Group_member_6 gm on g.child=gm.groupdn
inner join ad_account_2 a on gm.member=a.distinguished_name
where gm.objtype='User'
and upper(employee_type)<>'SY';
GO
create view wpar_2017_all_Groups_1 as
select distinct  /* "group/user name" */ "domain" + g.samaccountname  as "group/user name",
"role", "child", g.groupdn, "apath", impacted_ci_computersystem_name, configuration_item_number, configuration_item_name, operating_environment, status,
case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
else '' end
as "domain",
application_code, said, impacted_ci_number, impacted_ci_name, impacted_ci_operating_environment, impacted_ci_status
from wpar_2017_all_servers w2as
left join "war priv groups" wpg on upper(w2as.impacted_ci_computersystem_name)=wpg.server
and wpg.source<>'GA'
/* left */ join ad_group_6 g
on upper(wpg."group/user name")=upper("domain" + g.samaccountname) and g.as_of_tms='2017-06-29 00:00:00'
left join ad_group_flat adf on g.groupdn=adf.parent
where "type"='Group';
GO
create view wpar_2017_all_group_member_recert as
select 
"domain",
"group/user name", 
child as "nested group granting access",
"path",
a.userid as "ID per windows",
display_name as "full user name",
employee_type,
person_employee_number as "ssb_id"

from
wpar_2017_all_groups w
inner join ad_group_member_6 gm on w.child=gm.groupdn
inner join ad_account_2 a on gm.member=a.distinguished_name
where objtype='User' and (upper(ssb_id)<>'SYS000')
group by 1,2,3,4,5,6,7,8;
GO
create view wpar_2017_all_user_access_groups as
(
select distinct
(case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(g.groupdn, ',DC=dmz,DC=local')>0 then 'DMZ\'
else '' end)
 + g.samaccountname as "User Access Group",
 g.groupdn,
 user_ct,
g.Description as Description,
w."group/user name" as "Policy Enforcement Group"
from wpar_2017_all_groups w
left join ad_group_6 g on w.child=g.groupdn
left join
(
select gm.groupdn, count(a.distinguished_name) as user_ct
from
ad_group_member_7 gm
inner join ad_account_7 a on gm.member=a.distinguished_name
and objtype='User' and (person_employee_number between '000000' and '999999')
and "enabled"='TRUE' group by 1
) x on g.groupdn=x.groupdn
where "User Access Group" is not null
);
GO
create view wpar_2017_groups as
select distinct "group/user name", "role", "child", "path", impacted_ci_computersystem_name, configuration_item_number, configuration_item_name, operating_environment, status,
case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
else '' end
as "domain",
application_code, said, impacted_ci_number, impacted_ci_name, impacted_ci_operating_environment, impacted_ci_status
from tech_summ_crown_servers tscs
left join "war priv groups" wpg on upper(tscs.impacted_ci_computersystem_name)=wpg.server
left join ad_group_6 g
on upper("group/user name")=upper("domain" + g.samaccountname) and g.as_of_tms='2017-06-29 00:00:00'
left join ad_group_flat adf on g.groupdn=adf.parent
where "type"='Group';
GO
create view wpar_2017_group_member as
select 
case 
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP'
when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS'
else '' end
as "domain",
impacted_ci_computersystem_name as "server name",
"role" as "local role granting access", 
"group/user name", 
"path" as "nested group granting access",
configuration_item_name as "application running on server", 
application_code as "app code",
a.userid as "ID per windows",
display_name as "full user name",
person_employee_number as "ssb_id"
/* child, configuration_item_number, operating_environment, status,
said, impacted_ci_number, impacted_ci_name, impacted_ci_operating_environment, impacted_ci_status */
from tech_summ_crown_servers tscs
inner join "war priv groups" wpg on upper(tscs.impacted_ci_computersystem_name)=wpg.server
inner join ad_group_6 g
on upper("group/user name")=upper("domain" + '\' + g.samaccountname) and g.as_of_tms='2017-06-29 00:00:00'
inner join ad_group_flat adf on g.groupdn=adf.parent
inner join ad_group_member_6 gm on adf.child=gm.groupdn
inner join ad_account_2 a on gm.member=a.distinguished_name
where "type"='Group' and objtype='User' and (upper(ssb_id)<>'SYS000')
group by 1,2,3,4,5,6,7,8,9,10;
GO
create view wpar_2017_group_member_recert as
select 
"domain",
"group/user name", 
"path" as "nested group granting access",
a.userid as "ID per windows",
display_name as "full user name",
employee_type,
person_employee_number as "ssb_id"

from
wpar_2017_groups w
inner join ad_group_member_6 gm on w.child=gm.groupdn
inner join ad_account_2 a on gm.member=a.distinguished_name
where objtype='User' and (upper(ssb_id)<>'SYS000')
group by 1,2,3,4,5,6;
GO
create view wpar_2017_itgc_groups as
select distinct "group/user name", "role", "child", "path", impacted_ci_computersystem_name, configuration_item_number, configuration_item_name, operating_environment, status,
case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
else '' end
as "domain",
application_code, said, impacted_ci_number, impacted_ci_name, impacted_ci_operating_environment, impacted_ci_status
from tech_summ_itgc_crown_servers tscs
left join "war priv groups" wpg on upper(tscs.impacted_ci_computersystem_name)=wpg.server
left join ad_group_6 g
on upper("group/user name")=upper("domain" + g.samaccountname) and g.as_of_tms='2017-06-29 00:00:00'
left join ad_group_flat adf on g.groupdn=adf.parent
where "type"='Group';
GO
create view wpar_2017_itgc_group_member_recert as
select 
"domain",
"group/user name", 
"path" as "nested group granting access",
a.userid as "ID per windows",
display_name as "full user name",
person_employee_number as "ssb_id"
from
wpar_2017_itgc_groups w
inner join ad_group_member_6 gm on w.child=gm.groupdn
inner join ad_account_2 a on gm.member=a.distinguished_name
where objtype='User' and (upper(ssb_id)<>'SYS000')
group by 1,2,3,4,5,6;
GO
create view wpar_2018_all_groups as 
select distinct 
g.groupdn,
g."source", g."Policy Enforcement Group",  adf."child", adf."path", adf."apath"
from  "war_pol_enf_groups" g 
left join ad_group_flat adf on g.groupdn=adf.parent;
GO
create view wpar_2018_all_group_members as
select 
(case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(g.groupdn, ',DC=dmz,DC=local')>0 then 'DMZ\'
when charindex(g.groupdn, ',DC=ssga,')>0 then 'SSGAROOT\'
when charindex(g.groupdn, ',DC=statestr,')>0 then 'STATESTR\'
else '' end)
 + g.samaccountname as GroupName,
a.AccountName,
g.Description as Description,
min(w."Policy Enforcement Group") as CustomAttrib1,
/* min */ (source) as CustomAttrib2,
a.PersonSource,
a.PersonID,
a.FirstName,
a.LastName,
a.EmailAddress,
a.AccountStatus
from wpar_2018_all_groups w
inner join ad_group g on w.child=g.groupdn
inner join ad_group_member gm on w.child=gm.groupdn
inner join ad_account_person a on gm.member=a.distinguished_name
where objtype='User' 
group by 1,2,3,5,6,7,8,9,10,11;
GO
create view wpar_2018_app_users as
select distinct
groupname as "User Access Group",
AccountName,
Description,
CustomAttrib1 as "Policy Enforcement Group",
CustomAttrib2 as "Source",
PersonSource,
PersonID,
FirstName,
LastName,
EmailAddress,
AccountStatus,
Supervisor_ID,
Supervisor_ID_Name,
SVP_ID,
SVP_Name,
EVP_ID,
EVP_Name,
App, "u_businesS_service", a."application name", a."business evp", a."it cio direct report", a."IT Owner", a."IT Authorizing SVP"
from ADI_Common_2018
left join wpar_person_mgr pm on pm.user_id=(personsource + personid)
left join wpar_2018_grp_svr_app_detail wgsad on wgsad."Policy Enforcement Group"=CustomAttrib1
left join aiw_appcode a on a."application code"=app
where /* svp_id not in (15583,
14398,
38128,
63496,
173037,
72362,
134257,
47796,
171850,
49987,
54476
)
and */ app is not null;
GO
create view wpar_2018_grp_mem_direct as
select groupname, count(distinct accountname) as mem_ct
from adi_common_2018
/* top level privileged groups and number of servers for each */
group by 1;
GO
create view wpar_2018_grp_mem_total as
select parent as groupdn, count(distinct accountname) as mem_total
from ad_group_flat_7 adf
inner join adi_common_2018 c on
((case when charindex(child, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(child, ',DC=corp,')>0 then 'CORP\'
when charindex(child, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(child, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(child, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(child, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(child, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(child, ',DC=dmz,DC=local')>0 then 'DMZ\'
else '' end)
 + regexp_substring(apath, '[^|]+$'))=c.groupname

group by 1;
GO
create view wpar_2018_grp_svr_app as
select
(case when charindex(child, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(child, ',DC=corp,')>0 then 'CORP\'
when charindex(child, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(child, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(child, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(child, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(child, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(child, ',DC=dmz,DC=local')>0 then 'DMZ\'
when charindex(child, ',DC=ssga,')>0 then 'SSGAROOT\'
when charindex(child, ',DC=statestr,')>0 then 'STATESTR\'
else '' end)
 + dbo.String_Split(apath,'|',1) as "User Access Group", 
c.description as "User Access Desc", 
md.mem_ct as "User Access Direct",
mt.mem_total as "User Access Total",
apath as "Access Path", 
(case when charindex(parent, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(parent, ',DC=corp,')>0 then 'CORP\'
when charindex(parent, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(parent, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(parent, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(parent, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(parent, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(parent, ',DC=dmz,DC=local')>0 then 'DMZ\'
when charindex(parent, ',DC=ssga,')>0 then 'SSGAROOT\'
when charindex(parent, ',DC=statestr,')>0 then 'STATESTR\'
else '' end)
 + regexp_substring(apath, '[^|]+$') as "Policy Enforcement Group",
p.description as "Policy Enforcement Desc", 
svr_ct as "Number of Servers Policy Enforcement",
svr_total as "Number of Servers Access Group",
svr_list, app_list --top 10 * 
from ad_Group_rollup_7 r
left join wpar_2018_grp_svr_total t on t.groupname=r.parent
left join wpar_2018_grp_svr_direct d on d.groupname=r.parent
left join wpar_2018_grp_mem_total mt on mt.groupdn=r.child
left join wpar_2018_grp_mem_direct md on md.groupname="User Access Group"
left join wpar_2018_group_app_list a on a.groupdn=r.parent
left join wpar_2018_group_svr_list s on s.groupdn=r.parent
left join ad_group_7 p on p.groupdn=r.parent
left join ad_group_7 c on c.groupdn=r.child
where ((svr_ct is not null) or (svr_total is not null));
GO
create view wpar_2018_grp_svr_app_detail as
select  "group/user name" as "Policy Enforcement Group",
Server, u_cmdb_ci_used_for  as svr_u_cmdb_ci_used_for,
comments as svr_cmdb_comments,
"appcode" as App,
u_business_service,
"u_business_service.u_cmdb_ci_used_for"
from war_local_admin_groups
where "group/user name" is not null
group by 1,2,3,4,5,6,7;
GO
create view wpar_2018_grp_svr_direct as
select "groupdn" as groupname, count(distinct server) as svr_ct
from war_local_admin_groups
/* top level privileged groups and number of servers for each */
group by 1;
GO
create view wpar_2018_grp_svr_total as
select  groupdn as GroupName,
 count(distinct server) as svr_total
 from war_local_admin_groups w
 group by 1;
GO
create view wpar_2018_server_error as
select distinct
case 
-- if server not in CMDB then it probably does not host a production app
when sci."name" is  null then 'Not in CMDB'
-- if the server doesn't have the group (e.g., "Administrators", "Power Users", "Backup Operators" then no risk
when "group/user name" not  in ('Unspecified error') then 'Group not found'
-- if at least 1 CMDB record indicates "retired", that overrides any other record
when (select count(*) from "snow_cmdb_export" ci2 where ci2."install_status"='Retired' and 
dbo.String_Split(ci2."name", '.',1)=upper(wla.server) and ci2.sys_class_name='Windows Server'
)>0 then 'Retired'
-- if CMDB status is not Installed then out of scope
when sci."install_status" <> 'Installed' then 'Not Installed'
-- if physical or virtual was scheduled for Decert, then not in scope
when "decert physical" is not null then 'Decert Phys'
when "decert virtual" is not null then 'Decert Virt'
-- Serverwise Tracker status
--when "deleted host name" is not null then 'Deleted Host'
-- LANMAN status check
when "LANMAN Status"   in ('Stopped','Unreachable') then "LANMAN Status"
-- servers marked as DEVELOPMENT in CMDB are not in scope
when sci.u_cmdb_ci_used_for = 'DEVELOPMENT' then 'DEVELOPMENT'
-- servers requiring further investigation
else 'Unknown' end as ErrType,
source, wla.server, "role", "group/user name",
sci."install_status" as "CMDB Status", sci.u_cmdb_ci_used_for, sci.correlation_id , sci."name",
wsdp."physical name" as "Decert Physical", wsdv."virtual name" as "Decert Virtual"
--wsdd."host name" as "Deleted Host Name",
--case when wsad.status='Inactive' then dbo.String_Split(wsad.server,',',2) else null end as "AD Account Inactive",
,wsla."lanstatus" as "LANMAN Status"
from "war_local_admin" wla
left join "snow_cmdb_export" sci on dbo.String_Split(sci."name", '.',1)=upper(wla.server) and sci.sys_class_name='Windows Server'
left join "wpar_2018_server_decert" wsdp on upper(wla.server)=upper(wsdp."physical name")
left join "wpar_2018_server_decert" wsdv on upper(wla.server)=upper(wsdv."virtual name")
/*
left join "wpar server deleted" wsdd on upper(wla.server)=upper(wsdd."host name")
left join "wpar server adstatus" wsad on upper(wla.server)=upper(dbo.String_Split(wsad.server, ',',1)) and wpg.source=wsad."domain"
*/
left join "wpar_server_lanstatus_2018" wsla on upper(wla.server)=upper(wsla.server)

where wla.source<>'GA'
and ("role"='Error' or sci."name" is null);
GO
create view wpar_adi_group_manager as
select x."group name", x."assigned reviewer full name", x.mgr_ct, y.tot_ct from
 (select "group name", "assigned reviewer full name", mgr_ct from 
  (select "group name", "assigned reviewer full name", count(*) as mgr_ct,
   dense_rank() over (partition by "group name" order by mgr_ct desc) as rnk
   from wpar_ssrp_all_items
   group by 1,2) z 
   where rnk=1
 ) x
inner join (select "group name", count(*) as tot_ct from wpar_ssrp_all_items group by 1) y on x."group name"=y."group name";
GO
create view wpar_emp_type_fix as
select person_employee_number, min(employee_type) as employee_type
from 
(select person_employee_number, employee_type from ad_account_2 where enabled_1='TRUE'
union
select cast("person id" as varchar(6)) as person_employee_number, "person source" as employee_type from "ssga orphans"
) x
where person_employee_number in
(Select distinct person_employee_number from ad_Account_2 where employee_type is null)
group by 1;
GO
create view wpar_group_owner as
select distinct
(case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(g.groupdn, ',DC=dmz,DC=local')>0 then 'DMZ\'
else '' end)
 + g.samaccountname as "User Access Group", 
case when "R1 User Access Desc" is not null then "R1 User Access Desc"
when "R2 ETS" is not null then "R2 ETS"
when "R3 Assigned Reviewer" is not null then "R3 Assigned Reviewer"
when "R4 App Owner" is not null then "R4 App Owner"
when "R5 ETS" is not null then "R5 ETS" else null end as "Group Owner",
managedby,
case when charindex(upper(r.description),'OWNER=')>0 or charindex(upper(r.description),'O=')>0 or charindex(upper(r.description),'P=')>0 then r.description
else null end as "R1 User Access Desc", 
--apath as "Access Path",
case when charindex(upper("samaccountname"), 'CITRIX')>0 then 'Mike Catizone'
when charindex(upper("samaccountname"), 'TIVOLI')>0 then 'Mike McCaughey'
when charindex(upper("samaccountname"), 'SPSS')>0 then 'Jim Hayter'
when charindex(upper("samaccountname"), 'DATABASE')>0 then 'Rohan'
when charindex(upper("samaccountname"), 'STORAGE')>0 then 'Mike McCaughey'
else null end as "R2 ETS",
"assigned reviewer full name" as "R3 Assigned Reviewer", mgr_ct, tot_ct,
"app_list",
case when charindex(app_list,',')>0 then null else "owner_list" end as "R4 App Owner", 
case when svr_total>7000 then 'Lindsay Legler' else null end as "R5 ETS"
from (select distinct groupname, description from adi_common) r
left join ad_group_6 g on "User Access Group"=r.groupname
left join wpar_grp_svr_total t on t.groupname=g.groupdn
--left join wpar_grp_svr_direct d on d.groupname=r.parent
--left join wpar_grp_mem_total mt on mt.groupdn=r.child
--left join wpar_grp_mem_direct md on md.groupname="User Access Group"
left join wpar_group_app_list_o a on a.groupdn=g.groupdn
--left join wpar_group_svr_list s on s.groupdn=r.parent
--left join ad_group_6 p on p.groupdn=r.parent
left join wpar_adi_group_manager agm on agm."group name"="user access group" and 2*mgr_ct>=tot_ct
where svr_total is not null;
GO
create view wpar_grp_mem_direct as
select groupname, count(distinct accountname) as mem_ct
from adi_common
/* top level privileged groups and number of servers for each */
group by groupname;
GO
create view wpar_grp_mem_total as
select parent as groupdn, count(distinct accountname) as mem_total
from ad_group_flat adf
inner join adi_common c on
((case when charindex(child, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(child, ',DC=corp,')>0 then 'CORP\'
when charindex(child, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(child, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(child, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(child, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(child, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(child, ',DC=dmz,DC=local')>0 then 'DMZ\'
else '' end)
 + regexp_substr(apath, '[^|]+$'))=c.groupname

group by parent ;
GO
create view wpar_grp_svr_app as
select
(case when charindex(child, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(child, ',DC=corp,')>0 then 'CORP\'
when charindex(child, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(child, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(child, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(child, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(child, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(child, ',DC=dmz,DC=local')>0 then 'DMZ\'
else '' end)
 + dbo.String_Split(apath,'|',1) as "User Access Group", 
c.description as "User Access Desc", 
md.mem_ct as "User Access Direct",
mt.mem_total as "User Access Total",
apath as "Access Path", 
(case when charindex(parent, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(parent, ',DC=corp,')>0 then 'CORP\'
when charindex(parent, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(parent, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(parent, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(parent, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(parent, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(parent, ',DC=dmz,DC=local')>0 then 'DMZ\'
else '' end)
 + regexp_substring(apath, '[^|]+$') as "Policy Enforcement Group",
p.description as "Policy Enforcement Desc", 
svr_ct as "Number of Servers Policy Enforcement",
svr_total as "Number of Servers Access Group",
svr_list, app_list --top 10 * 
from ad_Group_rollup r
left join wpar_grp_svr_total t on t.groupname=r.parent
left join wpar_grp_svr_direct d on d.groupname=r.parent
left join wpar_grp_mem_total mt on mt.groupdn=r.child
left join wpar_grp_mem_direct md on md.groupname="User Access Group"
left join wpar_group_app_list a on a.groupdn=r.parent
left join wpar_group_svr_list s on s.groupdn=r.parent
left join ad_group_6 p on p.groupdn=r.parent
left join ad_group_6 c on c.groupdn=r.child
where ((svr_ct is not null) or (svr_total is not null));
GO
create view wpar_grp_svr_app_detail as
select  "group/user name" as "Policy Enforcement Group",
Server, itdcioperatingenv as svr_cmdb_openv,
cmdb_desc as svr_cmdb_desc,
"a2i_appcode" as App,
a2i_ciname as "App CI Name",
a2i_openv as app_cmdb_openv
from wpar_2017_all_Groups
where "group/user name" is not null
group by 1,2,3,4,5,6,7;
GO
create view wpar_grp_svr_direct as
select "groupdn" as groupname, count(distinct server) as svr_ct
from wpar_2017_all_groups
/* top level privileged groups and number of servers for each */
group by 1;
GO
create view wpar_grp_svr_total as
select 
/*
(case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
else '' end)
 + g.samaccountname */ child 
as GroupName,
 count(distinct server) as svr_total
 from wpar_2017_all_groups w
 --join ad_Group_6 g on w.child=g.groupdn
 group by 1;
GO
create view wpar_person_mgr as
select
first_name, last_name, email_address,
user_id, supervisor_id, Supervisor_ID_Name,
cus_attr_user_cas_38 as SVP_ID,
cus_attr_user_cas_38_name as SVP_Name,
cus_attr_user_cas_44 as EVP_ID,
cus_attr_user_cas_44_name as EVP_Name,
cus_attr_user_cas_45 as ISO_ID,
cus_attr_user_cas_45_name as ISO_Name
from master_enterprise_users
where left(user_id,2) not in ('UN','SY') and is_terminated=0;
GO
create view wpar_process_mgr as
select
first_name, last_name, email_address,
user_id, supervisor_id, Supervisor_ID_Name,
cus_attr_user_cas_38 as SVP_ID,
cus_attr_user_cas_38_name as SVP_Name,
cus_attr_user_cas_44 as EVP_ID,
cus_attr_user_cas_44_name as EVP_Name,
cus_attr_user_cas_45 as ISO_ID,
cus_attr_user_cas_45_name as ISO_Name
from master_enterprise_users
where /* left(user_id,2) not in ('UN','SY') and */ is_terminated=0;
GO
create view wpar_server_error as
select distinct
case 
when ci.ciname is  null then 'Not in CMDB'
when "group/user name" not  in ('Unspecified error') then 'Group not found'
when (select count(*) from "cmdb export" ci2 where ci2.status='ARCHIVED' and 
dbo.String_Split(ci2.ciname, '.',1)=upper(wpg.server) and ci2.classification='CI.WINDOWSCOMPUTERSYSTEM'
)>0 then 'ARCHIVED'
when ci."status" = 'BUILD' then 'BUILD'
when "decert physical" is not null then 'Decert Phys'
when "decert virtual" is not null then 'Decert Virt'
when "deleted host name" is not null then 'Deleted Host'
when "LANMAN Status"   in ('Stopped','Unreachable') then "LANMAN Status"
when ITDCIOPERATINGENV = 'DEVELOPMENT' then 'DEVELOPMENT'
else 'Unknown' end as ErrType,
source, wpg.server, 
"role", "group/user name",
ci.status as "CMDB Status", ci.ITDCIOPERATINGENV, cinum, ciname,
wsdp."physical name" as "Decert Physical",
wsdv."virtual name" as "Decert Virtual",
wsdd."host name" as "Deleted Host Name",
case when wsad.status='Inactive' then dbo.String_Split(wsad.server,',',2) else null end as "AD Account Inactive",
wsla."lanstatus" as "LANMAN Status"
from "war priv groups" wpg
left join "cmdb export" ci on dbo.String_Split(ci.ciname, '.',1)=upper(wpg.server) and ci.classification='CI.WINDOWSCOMPUTERSYSTEM'
left join "wpar server decert" wsdp on upper(wpg.server)=upper(wsdp."physical name")
left join "wpar server decert" wsdv on upper(wpg.server)=upper(wsdv."virtual name")
left join "wpar server deleted" wsdd on upper(wpg.server)=upper(wsdd."host name")
left join "wpar server adstatus" wsad on upper(wpg.server)=upper(dbo.String_Split(wsad.server, ',',1)) and wpg.source=wsad."domain"
left join "wpar server lanstatus" wsla on upper(wpg.server)=upper(wsla.server)
where wpg.source<>'GA'
and ("role"='Error' or ci.ciname is null);
GO
create view wpar_server_group_missing as
select distinct source, server, "group/user name",
case when charindex(g.groupdn, ',DC=ad,DC=imsi,')>0 then 'IMS-NT\'
when charindex(g.groupdn, ',DC=corp,')>0 then 'CORP\'
when charindex(g.groupdn, ',DC=Curnx,')>0 then 'CURNX\'
when charindex(g.groupdn, ',DC=global,DC=ifsmifa,')>0 then 'MIFA\'
when charindex(g.groupdn, ',DC=ga,DC=ssga,')>0 then 'GA\'
when charindex(g.groupdn, ',DC=IMSWEST,')>0 then 'IMSW\'
when charindex(g.groupdn, ',DC=nj,DC=pfs,')>0 then 'PFS\'
when charindex(g.groupdn, ',DC=dmz,DC=local')>0 then 'DMZ\'
else '' end
as "domain"
from "war priv groups" wpg
left join ad_group_6 g on upper("group/user name")=upper("domain" + g.samaccountname) and g.as_of_tms='2017-08-14 00:00:00'
where source<>'GA' and wpg."type"='Group' and "role"<>'Error'
and g.groupdn is null;


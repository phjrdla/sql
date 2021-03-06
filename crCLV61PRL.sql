CREATE USER "CLV61PRL" IDENTIFIED BY CLV_61_PRL
      DEFAULT TABLESPACE "BSBIS_DATA_CLV61"
      TEMPORARY TABLESPACE "TEMP";

   GRANT "CONNECT" TO "CLV61PRL";
   GRANT "RESOURCE" TO "CLV61PRL";
   GRANT "DBA" TO "CLV61PRL";
   GRANT "IMP_FULL_DATABASE" TO "CLV61PRL";
   GRANT "DATAPUMP_EXP_FULL_DATABASE" TO "CLV61PRL";
   GRANT "DATAPUMP_IMP_FULL_DATABASE" TO "CLV61PRL";
   GRANT "SCHEDULER_ADMIN" TO "CLV61PRL";
   GRANT "SOLIFE_USER" TO "CLV61PRL";

  GRANT CREATE TYPE TO "CLV61PRL";
  GRANT CREATE PROCEDURE TO "CLV61PRL";
  GRANT CREATE DATABASE LINK TO "CLV61PRL";
  GRANT CREATE VIEW TO "CLV61PRL";
  GRANT CREATE ANY SYNONYM TO "CLV61PRL";
  GRANT UNLIMITED TABLESPACE TO "CLV61PRL";

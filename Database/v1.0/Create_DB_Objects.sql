set echo on


DEFINE USERPASSWORD = "OES123"

CREATE TABLESPACE OES_TABLESPACE LOGGING DATAFILE 'oes.dbf' SIZE 25M REUSE AUTOEXTEND ON NEXT  1280K MAXSIZE UNLIMITED EXTENT MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT  AUTO ;

CREATE TEMPORARY TABLESPACE OESTEMP tempfile 'oestemp.dbf' SIZE 10M REUSE AUTOEXTEND ON NEXT  1280K MAXSIZE UNLIMITED EXTENT MANAGEMENT LOCAL;


CREATE USER OES IDENTIFIED BY &&USERPASSWORD
	DEFAULT TABLESPACE OES_TABLESPACE
	TEMPORARY TABLESPACE OESTEMP
	QUOTA UNLIMITED ON OES_TABLESPACE;
	
GRANT CREATE SESSION TO OES;
GRANT ALTER SESSION TO OES;
GRANT CREATE TABLE TO OES;
GRANT CREATE VIEW TO OES;
GRANT CREATE SEQUENCE TO OES;
GRANT CREATE PROCEDURE TO OES;
GRANT CREATE TRIGGER TO OES;
GRANT CREATE TYPE TO OES;	


spool off;

CREATE TABLE APPCONFIG(KEYNAME VARCHAR2(100) NOT NULL,VALUE VARCHAR2(100) NOT NULL,STATUS VARCHAR2(50) NOT NULL,PRIMARY KEY (KEYNAME));

CREATE TABLE DEPARTMENT(DEPARTMENTCODE VARCHAR2(50) NOT NULL, DEPARTMENTNAME VARCHAR2(100), STATUS VARCHAR2(30) NOT NULL, PRIMARY KEY (DEPARTMENTCODE));


CREATE TABLE QUESTIONMANAGER(QUESTIONID VARCHAR2(36), QUESTION VARCHAR2(300) NOT NULL, OPTION1 VARCHAR2(300) NOT NULL, OPTION2 VARCHAR2(300) NOT NULL, OPTION3 VARCHAR2(300) NOT NULL, OPTION4 VARCHAR2(300) NOT NULL,ANSWER VARCHAR2(7) NOT NULL, REASON VARCHAR2(300),MARKS NUMBER(38,0) NOT NULL, SUBJECTCODE VARCHAR2(50) NOT NULL, DEPARTMENTCODE VARCHAR2(50) NOT NULL, STATUS VARCHAR2(30) NOT NULL, PRIMARY KEY (QUESTIONID));

COMMIT;
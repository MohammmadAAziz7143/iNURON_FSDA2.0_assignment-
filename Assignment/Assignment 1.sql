CREATE or replace table NJ_CONSUMER_COMPLAINTS 

(    DATE_RECEIVED STRING, 

     PRODUCT_NAME VARCHAR2(50), 

     SUB_PRODUCT VARCHAR2(100), 

     ISSUE VARCHAR2(100), 

     SUB_ISSUE VARCHAR2(100), 

     CONSUMER_COMPLAINT_NARRATIVE string, 

     Company_Public_Response STRING, 

     Company VARCHAR(100), 

     State_Name CHAR(40), 

     Zip_Code string, 

     Tags VARCHAR(40), 
     Consumer_Consent_Provided CHAR(25), 

     Submitted_via STRING, 

     Date_Sent_to_Company STRING, 

     Company_Response_to_Consumer VARCHAR(40), 

     Timely_Response CHAR(40), 

     CONSUMER_DISPUTED CHAR(40), 

     COMPLAINT_ID NUMBER(12,0) NOT NULL PRIMARY KEY 

); 

DESCRIBE TABLE NJ_CONSUMER_COMPLAINTS;

SELECT * FROM NJ_CONSUMER_COMPLAINTS;


SELECT DISTINCT  *  FROM NJ_CONSUMER_COMPLAINTS WHERE PRODUCT_NAME LIKE 'Bank%';
SELECT *  FROM NJ_CONSUMER_COMPLAINTS WHERE ISSUE LIKE '%Account%';
SELECT DISTINCT  *  FROM NJ_CONSUMER_COMPLAINTS WHERE PRODUCT_NAME LIKE '%e';
SELECT  *  FROM NJ_CONSUMER_COMPLAINTS WHERE PRODUCT_NAME LIKE '_a%';
select * from NJ_CONSUMER_COMPLAINTS WHERE SUBMITTED_VIA like 'F_%'; 
SELECT * FROM NJ_CONSUMER_COMPLAINTS WHERE SUB_PRODUCT LIKE 'C%t';
SELECT * FROM NJ_CONSUMER_COMPLAINTS WHERE ISSUE LIKE 'M%e';
 

SELECT DISTINCT * FROM NJ_CONSUMER_COMPLAINTS WHERE PRODUCT_NAME IN ('Consumer Loan','Mortgage','Debt collection');
SELECT DISTINCT * FROM NJ_CONSUMER_COMPLAINTS WHERE COMPANY IN ('Wells Fargo & Company','Citibank','Bank of America');



SELECT DISTINCT  * FROM NJ_CONSUMER_COMPLAINTS WHERE DATE_RECEIVED BETWEEN  '29-07-2013' AND '31-07-2013';


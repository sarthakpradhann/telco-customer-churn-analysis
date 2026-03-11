CREATE TABLE telco_churn (
customerID TEXT,
gender TEXT,
SeniorCitizen INT,
Partner TEXT,
Dependents TEXT,
tenure INT,
PhoneService TEXT,
MultipleLines TEXT,
InternetService TEXT,
OnlineSecurity TEXT,
OnlineBackup TEXT,
DeviceProtection TEXT,
TechSupport TEXT,
StreamingTV TEXT,
StreamingMovies TEXT,
Contract TEXT,
PaperlessBilling TEXT,
PaymentMethod TEXT,
MonthlyCharges FLOAT,
TotalCharges FLOAT,
Churn TEXT
);


DROP TABLE telco_churn;

CREATE TABLE telco_churn (
customerID TEXT,
gender TEXT,
SeniorCitizen INT,
Partner TEXT,
Dependents TEXT,
tenure INT,
PhoneService TEXT,
MultipleLines TEXT,
InternetService TEXT,
OnlineSecurity TEXT,
OnlineBackup TEXT,
DeviceProtection TEXT,
TechSupport TEXT,
StreamingTV TEXT,
StreamingMovies TEXT,
Contract TEXT,
PaperlessBilling TEXT,
PaymentMethod TEXT,
MonthlyCharges FLOAT,
TotalCharges TEXT,
Churn TEXT
);DROP TABLE telco_churn;

CREATE TABLE telco_churn (
customerID TEXT,
gender TEXT,
SeniorCitizen INT,
Partner TEXT,
Dependents TEXT,
tenure INT,
PhoneService TEXT,
MultipleLines TEXT,
InternetService TEXT,
OnlineSecurity TEXT,
OnlineBackup TEXT,
DeviceProtection TEXT,
TechSupport TEXT,
StreamingTV TEXT,
StreamingMovies TEXT,
Contract TEXT,
PaperlessBilling TEXT,
PaymentMethod TEXT,
MonthlyCharges FLOAT,
TotalCharges TEXT,
Churn TEXT
);

ALTER TABLE telco_churn

SELECT churn, COUNT(*)
FROM telco_churn
GROUP BY churn;

SELECT contract, COUNT(*)
FROM telco_churn
WHERE churn='Yes'
GROUP BY contract;

SELECT churn, AVG(monthlycharges)
FROM telco_churn
GROUP BY churn;

SELECT churn, AVG(tenure)
FROM telco_churn
GROUP BY churn;

SELECT internetservice, COUNT(*)
FROM telco_churn
WHERE churn='Yes'
GROUP BY internetservice;
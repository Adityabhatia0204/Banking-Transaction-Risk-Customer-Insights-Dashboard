-- A. database
CREATE DATABASE IF NOT EXISTS banking_analytics;
USE banking_analytics;

-- B. main table
CREATE TABLE IF NOT EXISTS transactions_clean (
  transaction_id            VARCHAR(16),
  customer_id               VARCHAR(16),
  transaction_date          DATE,
  merchant_category         VARCHAR(64),
  channel                   VARCHAR(32),
  device_id                 VARCHAR(64),
  transaction_amount        DECIMAL(12,2),
  transaction_amount_capped DECIMAL(12,2),
  is_repeat_customer        TINYINT,
  days_since_last_txn       INT,
  is_fraud                  TINYINT,
  age                       INT,
  gender                    VARCHAR(16),
  region                    VARCHAR(32),
  account_type              VARCHAR(32),
  income_band               VARCHAR(32),
  risk_score                DECIMAL(12,2),
  risk_band                 VARCHAR(16)
);

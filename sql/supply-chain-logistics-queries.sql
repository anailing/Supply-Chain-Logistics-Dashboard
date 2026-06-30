/*
=========================================
Supply Chain Logistics Analysis SQL Queries
Author: Alexis Nailing
Project: Supply Chain Risk & Logistics Performance Dashboard
=========================================
*/

--------------------------------------------------
-- 1. Risk Classification Count
--------------------------------------------------
SELECT
    risk_classification,
    COUNT(*) AS total_records
FROM supply_chain_logistics_dataset
GROUP BY risk_classification
ORDER BY total_records DESC;

--------------------------------------------------
-- 2. Average Shipping Cost
--------------------------------------------------

SELECT
    ROUND(AVG(shipping_costs), 2) AS avg_shipping_cost
FROM supply_chain_logistics_dataset
WHERE shipping_costs IS NOT NULL;

--------------------------------------------------
-- 3. Average Supplier Reliability
--------------------------------------------------

SELECT
    ROUND(AVG(supplier_reliability_score), 2) AS avg_supplier_reliability
FROM supply_chain_logistics_dataset
WHERE supplier_reliability_score IS NOT NULL;

--------------------------------------------------
-- 4. Average Lead Time
--------------------------------------------------

SELECT
    ROUND(AVG(lead_time_days), 2) AS avg_lead_time_days
FROM supply_chain_logistics_dataset
WHERE lead_time_days IS NOT NULL;

--------------------------------------------------
-- 5. Average Shipping Cost by Risk Classification
--------------------------------------------------

SELECT
    risk_classification,
    ROUND(AVG(shipping_costs), 2) AS avg_shipping_cost
FROM supply_chain_logistics_dataset
WHERE shipping_costs IS NOT NULL
GROUP BY risk_classification
ORDER BY avg_shipping_cost DESC;

--------------------------------------------------
-- 6. Average Supplier Reliability by Risk Classification
--------------------------------------------------

SELECT
    risk_classification,
    ROUND(AVG(supplier_reliability_score), 2) AS avg_supplier_reliability
FROM supply_chain_logistics_dataset
WHERE supplier_reliability_score IS NOT NULL
GROUP BY risk_classification
ORDER BY avg_supplier_reliability DESC;

--------------------------------------------------
-- 7. Average Lead Time by Risk Classification
--------------------------------------------------

SELECT
    risk_classification,
    ROUND(AVG(lead_time_days), 2) AS avg_lead_time_days
FROM supply_chain_logistics_dataset
WHERE lead_time_days IS NOT NULL
GROUP BY risk_classification
ORDER BY avg_lead_time_days DESC;
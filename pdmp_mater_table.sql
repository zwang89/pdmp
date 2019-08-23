-- create a master table to join all three clean tables together
create table access_admin as
SELECT a.*,
       b.*
FROM pdmp_access_clean AS a
LEFT JOIN pdmp_admin_clean AS b
    ON a.Jurisdictions = b.Jurisdictions AND
       a.EffectiveDate = b.EffectiveDate
UNION ALL
SELECT a.*,
       b.*
FROM pdmp_admin_clean AS a
LEFT JOIN pdmp_access_clean AS b
    ON a.Jurisdictions = b.Jurisdictions AND
       a.EffectiveDate = b.EffectiveDate;


CREATE TABLE access_admin_report AS
SELECT c.*,
       d.*
FROM access_admin AS c
LEFT JOIN pdmp_admin_clean as d
ON c.Jurisdictions = d.Jurisdictions AND
   c.EffectiveDate = d.EffectiveDate
UNION ALL
SELECT c.*,
       d.*
FROM  pdmp_admin_clean AS c
LEFT JOIN access_admin as d
ON c.Jurisdictions = d.Jurisdictions AND
   c.EffectiveDate = d.EffectiveDate


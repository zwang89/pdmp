-- create a duplicate for pdmp admin table
CREATE TABLE pdmp_admin AS
SELECT *
FROM pdmp_admin_full;

-- add a column table type
ALTER TABLE pdmp_admin
ADD table_type varchar(225);

-- add column value as admin
UPDATE pdmp_admin SET table_type = "admin";

-- clean up the admin table
CREATE TABLE pdmp_admin_clean AS
SELECT *
FROM pdmp_admin as b
GROUP BY b.Jurisdictions,
         b.pmp2012,
         b.agency_AttorneyGeneral,
         b.agency_Consumerprotectionagency,
         b."agency_DepartmentofHealth/HHS",
         b.agency_Lawenforcement,
         b."agency_Professionallicensingauthority(e.g.PharmacyorMedicalBoard)",
         b.agency_Other,
         b."pmp-funding_Chargingfees",
         b."pmp-funding_Grants",
         b."pmp-funding_Gifts",
         b."pmp-funding_Nofundingprovisionsincludedinthelaw",
         b.oversight,
         b.evaluation,
         b."purge-time",
         b."proactive-permit",
         b."proactive-actionrequire_Mustreporttolawenforcement",
         b."proactive-actionrequire_Mustreporttoprofessionallicensingbody",
         b."proactive-actionrequire_Mustreporttoprescriberordispenser",
         b."proactive-actionrequire_Permittedtoreporttolawenforcement",
         b."proactive-actionrequire_Permittedtoreporttoprofessionallicensingbody",
         b."proactive-actionrequire_Permittedtoreporttoprescriberordispenser",
         b."proactive-actionrequire_Other",
         b.foia,
         b.research,
         b."pdmp-research",
         b.table_type;




















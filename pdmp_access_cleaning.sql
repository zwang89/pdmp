-- code to creates table to reduce the duplicates
-- create a table, pdmp access based on
CREATE TABLE pdmp_access AS
SELECT *
FROM pdmp_access_full;


-- add a new column called table type and assign new values to all
ALTER TABLE pdmp_access
ADD table_type varchar (225);

UPDATE pdmp_access SET table_type = 'access';

-- create final table for access
CREATE TABLE pdmp_access_clean AS
SELECT *
FROM pdmp_access AS a
GROUP BY a.Jurisdictions,
         a.pmp2012,
         a.access_Prescribers,
         a.access_Dispensers,
         a."access_MedicalExaminer/Coroner",
         a.access_RegulatoryBoards,
         a.access_DrugCourts,
         a.access_None,
         a."prescriber-access_Currentpatients",
         a."prescriber-access_Formerpatients",
         a."prescriber-access_None",
         a."prescriber-access_Prospectivepatients",
         a."dispenser-access_Currentpatients",
         a."dispenser-access_Formerpatients",
         a."dispenser-access_None",
         a."dispenser-access_Prospectivepatients",
         a.delegate,
         a."patient-access",
         a."instate-yn",
         a."instate-le_Lawenforcementhasaccessforactiveinvestigations",
         a."instate-le_Lawenforcementmustbegrantedaccessbyissuanceofwarrant/judicialfindingofprobablecause",
         a."instate-le_Lawenforcementmustbegrantedaccessbysubpoena",
         a."instate-le_TherearenorestrictionsonlawenforcementaccesstoPDMPdata",
         a."pdmp-outstate",
         a."outstate-le_Lawenforcementhasaccessforactiveinvestigations",
         a."outstate-le_Lawenforcementmustbegrantedaccessbyissuanceofwarrant/judicialfindingofprobablecause",
         a."outstate-le_Lawenforcementmustbegrantedaccessbysubpoena",
         a."outstate-le_NorestrictionsonlawenforcementaccesstoPDMPdata";



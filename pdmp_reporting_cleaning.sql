-- create a table of pdmp report duplicate

CREATE TABLE pdmp_reporting AS
SELECT *
FROM pdmp_reporting_full;

-- create a column table type
ALTER TABLE pdmp_reporting
ADD table_type varchar(225);

-- update values to 'reporting'
UPDATE pdmp_reporting SET table_type = "reporting";


-- clean data table
CREATE Table pdmp_reporting_clean AS
SELECT *
FROM pdmp_reporting as c
GROUP BY c.Jurisdictions,
         c.pmp2012,
         c."share-disreport",
         c."share-disreprot",
         c."reportable-drugs_StateScheduleI",
         c."reportable-drugs_StateScheduleII",
         c."reportable-drugs_StateScheduleIII",
         c."reportable-drugs_StateScheduleIV",
         c."reportable-drugs_StateScheduleV",
         c."reportable-drugs_FederalScheduleI",
         c."reportable-drugs_FederalScheduleII",
         c."reportable-drugs_FederalScheduleIII",
         c."reportable-drugs_FederalScheduleIV",
         c."reportable-drugs_FederalScheduleV",
         c."reportable-drugs_ReportableDrugsNotSpecified",
         c."must-access",
         c."prescriber-freq",
         c."share-dispecheck",
         c."dispenser-freq",
         c."share-stateagen",
         c."share-insurance",
         c."state-share",
         c."share-provision_Receivingstatemustallowreciprocitywiththisstate",
         c."share-provision_Musthavebilateralmemorandumofunderstandingordatasharingagreement",
         c."share-provision_OnlyifotherstatehasPDMPlawsconsistentwithorsimilartothisstate",
         c."share-provision_Physicallyborderingstatesonlyorhigherpriority",
         c."share-provision_Noneoftheaboverestrictions"




















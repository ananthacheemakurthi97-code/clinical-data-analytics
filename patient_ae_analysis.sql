-- Query to identify most frequent Adverse Events by Treatment Arm
WITH AE_Counts AS (
    SELECT AE_TERM, ARM, COUNT(USUBJID) as Event_Count
    FROM Clinical_Data.AE_Table
    WHERE AE_SEVERITY = 'SEVERE'
    GROUP BY AE_TERM, ARM
)
SELECT * FROM AE_Counts
ORDER BY Event_Count DESC;

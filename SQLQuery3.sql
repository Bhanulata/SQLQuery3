

WITH Avg_CTE([suburb],[postcode],Average_Property_Median)
AS
	(
		SELECT 
			[suburb],
			[postcode],
			AVG([Property_Median_Value]) AS Average_Property_Median
		FROM 
			[dbo].[NSW_PropertyMedainValue]
		GROUP BY
			[suburb],
			[postcode]
	)
SELECT *
FROM Avg_CTE
WHERE Average_Property_Median is not null





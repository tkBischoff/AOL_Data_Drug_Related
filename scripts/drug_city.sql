SELECT d.NAME, da.ALIAS, q.QUERY, q.ID FROM AOL_SCHEMA.FACTS f 
INNER JOIN AOL_SCHEMA.QUERYDIM q 
	ON
		q.ID = f.QUERYID
INNER JOIN AOL_SCHEMA.DRUG_ALIAS da 
	ON
		INSTR(q.QUERY, CONCAT(CONCAT(' ', da.ALIAS), ' ') ) > 0
INNER JOIN AOL_SCHEMA.DRUG d 
	ON
		d.ID = da.ID
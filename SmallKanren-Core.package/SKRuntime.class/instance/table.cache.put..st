tabling
table: tableName cache: cacheKey put: tableCache
	| table |
	table := tables at: tableName ifAbsent: [ self class newTable ].
	^ self copy tables: 
		(tables copy at: tableName put: 
			(table copy at: cacheKey put: tableCache; yourself); yourself).
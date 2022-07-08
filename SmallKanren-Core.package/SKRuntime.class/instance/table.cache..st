tabling
table: tableName cache: cacheKey
	"Absences should only happen during debugging."
	^ (tables at: tableName ifAbsent: [ Dictionary new ]) at: cacheKey ifAbsent: [ Cons empty ].
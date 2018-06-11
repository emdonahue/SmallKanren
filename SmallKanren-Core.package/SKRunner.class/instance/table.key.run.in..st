tabling
table: tableName key: cacheKey run: aState in: goalBlock
	| table |
	table := tables at: tableName ifAbsentPut: [ Dictionary new ].
	table at: cacheKey ifPresent: [ :cache |  ] ifAbsent: [ table at: cacheKey put: Cons empty ].
	^ (goalBlock valueWithArguments: cacheKey) run: aState runner: self
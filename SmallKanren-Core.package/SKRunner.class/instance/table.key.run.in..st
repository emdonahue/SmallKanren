tabling
table: tableName key: argVars run: aState in: goalBlock
	"Can we reify the argVars /before/ passing to either reuse or master?"
	<todo>

	| table cacheKey |
	cacheKey := aState reify: argVars.
	table := tables at: tableName ifAbsentPut: [ SmallDictionary new ].
	"If the cache already exists, this is a consumer call. Otherwise, it is a producer call."
	^ table
		at: cacheKey
		ifPresent: [ :c | self reuse: argVars cache: c state: aState ]
		ifAbsent: [ | c |
			c := table at: cacheKey put: OrderedCollection new.
			self master: goalBlock args: argVars state: aState cache: c key: argVars ].
constructor
table: tableName cacheKey: cacheKey inputs: inputVars stream: aStream pseudocounts: pseudoCounts
	"Constructs a new producer stream to monitor an incomplete stream for new answers."
	^ self new
		tableName: tableName;
		inputVars: inputVars;
		cacheKey: cacheKey;
		pseudocounts: pseudoCounts;
		stream: aStream.
constructor
table: tableName cacheKey: cacheKey outputs: outputVars stream: aStream pseudocounts: pseudoCounts
	"Constructs a new producer stream to monitor an incomplete stream for new answers."
	^ self new
		tableName: tableName;
		outputVars: outputVars;
		cacheKey: cacheKey;
		pseudocounts: pseudoCounts;
		stream: aStream.
constructor
table: tableName inputs: inputVars outputs: outputVars stream: aStream pseudocounts: pseudoCounts
	"Constructs a new producer stream to monitor an incomplete stream for new answers."
	^ self new
		tableName: tableName;
		outputVars: outputVars;
		cacheKey: inputVars;
		pseudocounts: pseudoCounts;
		stream: aStream.
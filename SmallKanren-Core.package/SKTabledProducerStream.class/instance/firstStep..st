accessing
firstStep: aRunner
	self halt.
	"^ (stream firstStep: aRunner) table: tableName inputCacheKey: aConsLazy inputs: inputVars cacheKey: cacheKey state: aState runtime: aSKRuntime"
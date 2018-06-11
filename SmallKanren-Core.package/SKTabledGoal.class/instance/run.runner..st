running
run: aState runner: aRunner
	| cacheKey |
	cacheKey := aState reify: tabledArgs.
	^ aRunner table: tableName key: cacheKey run: aState in: block.
	"^ (block valueWithArguments: tabledArgs) run: aState runner: aRunner."
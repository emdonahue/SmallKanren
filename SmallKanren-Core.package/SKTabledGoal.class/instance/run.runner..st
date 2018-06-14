running
run: aState runner: aRunner
	
	.
	^ aRunner table: tableName key: tabledArgs run: aState in: block.
	"^ (block valueWithArguments: tabledArgs) run: aState runner: aRunner."
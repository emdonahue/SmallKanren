running
tabledRun: aState runner: aRunner
	<type: #SKPackage type: #SKRunner returns: #SKStream>
	^ aRunner table: tableName key: tabledArgs run: aState in: block.
running
tabledRun: aState runner: aRunner
	<type: #SKPackage type: #SKRunner returns: #SKStream>
	^ aRunner table: tableName key: inputs run: aState in: block.
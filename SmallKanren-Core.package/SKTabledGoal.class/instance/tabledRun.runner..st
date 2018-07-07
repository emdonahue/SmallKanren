running
tabledRun: aState runner: aRunner
	<type: #SKPackage type: #SKRunner returns: #SKStream>
	^ aRunner table: tableName inputs: inputs outputs: outputs run: aState in: block.
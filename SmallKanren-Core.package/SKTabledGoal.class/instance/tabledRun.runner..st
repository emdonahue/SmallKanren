running
tabledRun: aState runner: aRunner
	<type: #SKPackage type: #SKRuntime returns: #SKStream>
	^ aRunner table: tableName inputs: inputs outputs: outputs run: aState in: block.
extending
atKey: aSKVar put: aVal
	^ self class new hashmap: (bindings add: (FDSAssociation key: aSKVar val: aVal)).
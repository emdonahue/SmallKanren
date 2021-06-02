extending
atKey: aSKVar put: aVal
	^ self class new hashmap: (hashmap add: (FDSAssociation key: aSKVar val: aVal)).
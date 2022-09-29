extending
atKey: aSKVar put: aVal
	^ self class new bindings: (bindings add: (FDSAssociation key: aSKVar val: aVal)).
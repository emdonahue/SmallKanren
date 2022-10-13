extending
atKey: aSKVar put: aVal
	^ self class new bindings: (bindings add: (SKAssociation key: aSKVar val: aVal)).
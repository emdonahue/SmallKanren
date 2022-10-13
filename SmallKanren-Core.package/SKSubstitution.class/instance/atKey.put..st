extending
atKey: aSKVar put: aVal
	^ self class new bindings: (bindings add: (SKBinding key: aSKVar val: aVal)).
extending
atKey: aSKVar put: aVal
	^ self class new hashmap: (hashmap with: aSKVar as: aVal).
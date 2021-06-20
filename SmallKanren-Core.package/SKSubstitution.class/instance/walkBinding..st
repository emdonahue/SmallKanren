walking
walkBinding: aVariable
	"Look up the last pair in the chain of bindings beginning with aVariable, whether or not it is bound."

	^ hashmap atKey: aVariable ifPresent: [ :v | 
		v isSKVar 
			ifTrue: [ self walkBinding: v ] "Continue walking while we have a var."
			ifFalse: [ FDSAssociation key: aVariable val: v ] ] "Stop walking when we find a ground term and return the previous var."
		ifAbsent: aVariable. "If a var is free, it is the last var in its chain."
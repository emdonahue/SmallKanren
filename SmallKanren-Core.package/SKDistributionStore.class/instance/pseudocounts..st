probability
pseudocounts: pseudoCounts
	pseudoCounts ifEmpty: [ ^ state ].
	pseudocounts == pseudoCounts ifTrue: [ ^ self ].
	pseudocounts ifNotNil: [ ^ self class new state: state; pseudocounts: pseudoCounts ].
	pseudocounts := pseudoCounts.
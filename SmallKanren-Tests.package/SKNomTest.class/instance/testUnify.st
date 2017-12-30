as yet unclassified
testUnify
	self assert: ( a === 1 ) isEmpty.
	self assert: ( a === b ) isEmpty.
	self assert: ( a === a ) size equals: 1.
	self assert: ( a === varA ) size equals: 1.
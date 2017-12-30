as yet unclassified
testNom
	self assert: ( b skHash: a state: state ) equals: state.
	self assert: ( a skHash: a state: state ) equals: nil.
as yet unclassified
testObject
	self assert: ( 42 skHash: a state: state ) equals: state.
	self assert: ( '42' skHash: a state: state ) equals: state.
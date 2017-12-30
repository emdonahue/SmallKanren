as yet unclassified
testTie
	self assert: ( a >< a skHash: a state: state ) equals: state.
	self assert: ( a >< b skHash: a state: state ) equals: state.
	self assert: ( a >< x skHash: a state: state ) equals: state.
	self assert: ( a >< xy skHash: a state: state ) equals: state.
	self assert: ( a >< { a } skHash: a state: state ) equals: state.
	self assert: ( a >< { x. a. y. } skHash: a state: state ) equals: state.
	self assert: ( b >< a skHash: a state: state ) equals: nil.
	self assert: ( b >< b skHash: a state: state ) equals: state.
	self assert: ( b >< 42 skHash: a state: state ) equals: state.
	self assert: ( b >< x skHash: a state: state ) constraints first equals: ( SKHash new nom: a; term: x ).
	self assert: ( b >< xy skHash: a state: state ) constraints equals: 
		( SKConstraintStoreOld with: ( SKHash new nom: a; term: y ) with: ( SKHash new nom: a; term: x ) ).
	self assert: ( b >< { a } skHash: a state: state ) equals: nil.
	self assert: ( b >< { x. a. y. } skHash: a state: state ) equals: nil.
	
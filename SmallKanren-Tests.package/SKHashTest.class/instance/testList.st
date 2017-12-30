as yet unclassified
testList
	self assert: ( xy skHash: a state: state ) constraints equals: 
		( SKConstraintStoreOld with: ( SKHash new nom: a; term: y ) with: ( SKHash new nom: a; term: x ) ).
	self assert: (a hash: xy) run size equals: 1.
	self assert: (a hash: xa) run size equals: 0.
	self assert: ((a hash: y) & (y === xa)) run size equals: 0.
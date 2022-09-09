as yet unclassified
testList
	self assert: ( xy skHash: a state: state ) constraints equals: 
		( SKConstraintStoreOld with: ( SKHash new nom: a; term: y ) with: ( SKHash new nom: a; term: x ) ).
	self assert: (a hash: xy) runList size equals: 1.
	self assert: (a hash: xa) runList size equals: 0.
	self assert: ((a hash: y) & (y === xa)) runList size equals: 0.
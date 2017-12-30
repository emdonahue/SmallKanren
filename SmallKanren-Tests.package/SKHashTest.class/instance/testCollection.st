as yet unclassified
testCollection
	self assert: ( { x. y. } skHash: a state: state ) constraints equals: 
		( SKConstraintStoreOld with: ( SKHash new nom: a; term: y ) with: ( SKHash new nom: a; term: x ) ).
tests-unifying
testUnification
	self assert: ((SKDisequalityConstraint left: x right: y) unify: x with: 1) equals: (SKDisequalityConstraint left: 1 right: y).
	self assert: ((SKDisequalityConstraint left: x right: y) unify: y with: 1) equals: (SKDisequalityConstraint left: x right: 1).
	self assert: ((SKConjoinedDisequalities left: x right: y rest: (SKDisequalityConstraint left: z right: 1)) unify: x with: 1) equals: (SKConjoinedDisequalities left: 1 right: y rest: (SKDisequalityConstraint left: z right: 1)).
	self assert: ((SKConjoinedDisequalities left: x right: y rest: (SKDisequalityConstraint left: z right: 1)) unify: y with: 1) equals: (SKConjoinedDisequalities left: x right: 1 rest: (SKDisequalityConstraint left: z right: 1)).
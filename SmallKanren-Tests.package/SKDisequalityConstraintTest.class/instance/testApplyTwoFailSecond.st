tests
testApplyTwoFailSecond
	"Tests that DisequalityLists continue testing past the SingleDisequality case."

	self assert: ((x =/= 2 run: (x =/= 1 run: SKSubstitution new)) unify: x with: 1) equals: SKFailure singleton
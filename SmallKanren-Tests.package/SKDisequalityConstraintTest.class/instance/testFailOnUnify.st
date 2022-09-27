tests
testFailOnUnify
	"If the constraints prevent the state, fail on unification."

	self assert: ((x =/= 1 run: SKSubstitution new) unify: x with: 1) atEnd
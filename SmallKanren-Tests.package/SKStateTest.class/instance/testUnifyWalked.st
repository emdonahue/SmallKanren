tests
testUnifyWalked
	"Tests unifications that must be walked to be resolved."

	self assert: ((SKSubstitution new unify: x with: 1) unify: y with: x) => y equals: 1.
	self assert: ((SKSubstitution new unify: x with: 1) unify: x with: y) => y equals: 1.
	self assert: ((SKSubstitution new unify: x with: y) unify: x with: 1) => y equals: 1.
	self assert: ((SKSubstitution new unify: y with: x) unify: x with: 1) => y equals: 1.
	self assert: ((SKSubstitution new unify: x with: y) unify: 1 with: x) => y equals: 1.
	self assert: ((SKSubstitution new unify: y with: x) unify: 1 with: x) => y equals: 1.

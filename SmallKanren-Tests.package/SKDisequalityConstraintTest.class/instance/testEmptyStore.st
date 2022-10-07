tests
testEmptyStore
	"Constraint should be automatically set by empty constraint store. Since the store object has a separate EmptyStore representation when empty, we need to test both parts of the datatype."

	self assert: ((x =/= 1 run: SKSubstitution new) constraintAt: x) equals: (x =/=1) asConstraint
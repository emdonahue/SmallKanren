tests
testApplyTwoFailOnFirst
	"Tests that multiple exclusions check all their excluded terms."

	self assert: (((x excludes: 2) run: ((x excludes: 1) run: SKState new)) unify: x with: 1) equals: SKEmptyStream singleton
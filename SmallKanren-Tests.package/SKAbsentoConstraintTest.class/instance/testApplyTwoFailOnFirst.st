tests
testApplyTwoFailOnFirst
	"Tests that multiple exclusions check all their excluded terms."

	self assert: (((x absento: 2) run: ((x absento: 1) run: SKState new)) unify: x with: 1) equals: SKStream failure.
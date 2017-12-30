tests
testBranchesWithCommonParent
	"Tests that branches that share a common parent preserve this information appropriately."

	| runner x1y2 |
	x1y2 := [ x1 & y2 ] asGoal.
	runner := x1y2 runner: SKProofTree new.
	self assert: runner step history equals: x1y2 tag cons cons.
	self assert: runner step step history equals: (x1 tag cons: x1y2 tag cons) cons.
	self assert: runner step step step history equals: ((y2 tag cons: x1y2 tag cons) cons: (x1 tag cons: x1y2 tag cons) cons)
tests
testPassOnUnifyPairReverse
	"Even though the constraint becomes redundant if one conjunct fails, since we are not monitoring y, we don't eagerly remove it. It will be dropped if and when we check x."
	self assert: ((((x cons: y cons) =/= (1 cons: 2 cons) run: SKState new) unify: y with: 3) constraints at: x) equals: x=/=1 & (y=/=2).
tests
testPrioritizesGround
	"Disequalities should make every effort to suspend on only a single variable rather than twice on two free vars."
	self assert: (((x cons: y cons) =/= (1 cons: z cons) run: SKState new) constraints at: x) equals: x=/=1 & (y=/=z).
	self assert: (((y cons: x cons) =/= (z cons: 1 cons) run: SKState new) constraints at: x) equals: x=/=1 & (y=/=z).
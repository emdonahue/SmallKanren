tests
testApplyTwoFailFirst
	"A basic test of whether a MultipleDisequality fires appropriately just like a SingleDisequality."
	self assert: ((x =/= 2 run: (x =/= 1 run: SKState new)) unify: x with: 2) equals: SKEmptyStream singleton
tests
testApplyTwo
	"Tests whether a basic DisequalityList is correctly assigned to a variable."

	self assert: ((x =/= 2 run: (x =/= 1 run: SKState new)) constraints at: x) equals: x=/=2 , (x=/=1).
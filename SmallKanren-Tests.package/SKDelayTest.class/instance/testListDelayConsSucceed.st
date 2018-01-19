cons-ground
testListDelayConsSucceed
	"List delays succeed immediately."

	| s |
	s := ((1 cons: 2) carCdrIn: [:a  :d | x === a & (y === d) ]) run: SKState new.
	self assert: s isState.
	self assert: s => x equals: 1.
	self assert: (s => y) equals: 2.
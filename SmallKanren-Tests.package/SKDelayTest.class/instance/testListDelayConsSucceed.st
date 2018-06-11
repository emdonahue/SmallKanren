cons-ground
testListDelayConsSucceed
	"List delays succeed immediately."

	| s |
	s := ((1 cons: 2) carCdrIn: [:a  :d | x === a & (y === d) ]) runner.
	self assert: s stream isState.
	self assert: s stream => x equals: 1.
	self assert: (s stream => y) equals: 2.
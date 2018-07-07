terms
testAlphaEquals
	"currently, there is no check for binding/name clash"

	<todo>
	| x |
	x := SKVar new.
	self assert: (1 skAlphaEquals: 1).
	self deny: (1 skAlphaEquals: 2).
	self deny: (SKVar new skAlphaEquals: 1).
	self deny: (1 skAlphaEquals: SKVar new).
	self deny: ((SKVar new cons: SKVar new) skAlphaEquals: Cons empty).
	self deny: ( Cons empty skAlphaEquals: (SKVar new cons: SKVar new) ).
	
	self assert: (SKVar new skAlphaEquals: SKVar new).
	self assert: (x skAlphaEquals: x).
	self deny: ((1 cons: 2) skAlphaEquals: 1).
	self deny: (1 skAlphaEquals: (1 cons: 2)).
	self assert: ((1 cons: 2) skAlphaEquals: (1 cons: 2)).
	self deny: ((2 cons: 2) skAlphaEquals: (1 cons: 2)).
	self deny: ((1 cons: 1) skAlphaEquals: (1 cons: 2)).
	self deny: ((1 cons: 2) skAlphaEquals: (SKVar new cons: 2)).
	self deny: ((SKVar new cons: 2) skAlphaEquals: (1 cons: 2)).
	self assert: ((SKVar new cons: 2) skAlphaEquals: (SKVar new cons: 2)).
	self deny: ((1 cons: 2) skAlphaEquals: (1 cons: SKVar new)).
	self deny: ((1 cons: SKVar new) skAlphaEquals: (1 cons: 2)).
	self assert: ((1 cons: SKVar new) skAlphaEquals: (1 cons: SKVar new)).
	self deny: ((SKVar new cons: 2) skAlphaEquals: (SKVar new cons: 1)).
	self deny: ((1 cons: SKVar new) skAlphaEquals: (2 cons: SKVar new)).
	"self deny: ((x cons: x) skAlphaEquals: (SKVar new cons: SKVar new))."
tests-terms
testAlphaEquals
	"currently, there is no check for binding/name clash"

	<todo>
	| x |
	x := SKVar new.
	self assert: (1 skAlphaEquals: 1).
	self deny: (1 skAlphaEquals: 2).
	self deny: (SKVar new skAlphaEquals: 1).
	self deny: (1 skAlphaEquals: SKVar new).
	self deny: ((SKVar new cons: SKVar new cons) skAlphaEquals: Cons empty).
	self deny: ( Cons empty skAlphaEquals: (SKVar new cons: SKVar new cons) ).
	
	self assert: (SKVar new skAlphaEquals: SKVar new).
	self assert: (x skAlphaEquals: x).
	self deny: ((1 cons: 2 cons) skAlphaEquals: 1).
	self deny: (1 skAlphaEquals: (1 cons: 2 cons)).
	self assert: ((1 cons: 2 cons) skAlphaEquals: (1 cons: 2 cons)).
	self deny: ((2 cons: 2 cons) skAlphaEquals: (1 cons: 2 cons)).
	self deny: ((1 cons: 1 cons) skAlphaEquals: (1 cons: 2 cons)).
	self deny: ((1 cons: 2 cons) skAlphaEquals: (SKVar new cons: 2 cons)).
	self deny: ((SKVar new cons: 2 cons) skAlphaEquals: (1 cons: 2 cons)).
	self assert: ((SKVar new cons: 2 cons) skAlphaEquals: (SKVar new cons: 2 cons)).
	self deny: ((1 cons: 2 cons) skAlphaEquals: (1 cons: SKVar new cons)).
	self deny: ((1 cons: SKVar new cons) skAlphaEquals: (1 cons: 2 cons)).
	self assert: ((1 cons: SKVar new cons) skAlphaEquals: (1 cons: SKVar new cons)).
	self deny: ((SKVar new cons: 2 cons) skAlphaEquals: (SKVar new cons: 1 cons)).
	self deny: ((1 cons: SKVar new cons) skAlphaEquals: (2 cons: SKVar new cons)).
	"self deny: ((x cons: x) skAlphaEquals: (SKVar new cons: SKVar new))."
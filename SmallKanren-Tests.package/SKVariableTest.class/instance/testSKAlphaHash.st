tests
testSKAlphaHash
	self deny: 1 skAlphaHash = 2 skAlphaHash.
	self assert: SKVar new skAlphaHash equals: SKVar new skAlphaHash.
	self deny: Cons empty skAlphaHash = 1 cons skAlphaHash.
	self deny: 1 cons skAlphaHash = SKVar new cons skAlphaHash.
	self assert: (SKVar new cons skAlphaHash) equals: (SKVar new cons skAlphaHash).
	self assert: ((SKVar new cons: SKVar new cons) skAlphaHash) equals: ((SKVar new cons: SKVar new cons) skAlphaHash).
	
	
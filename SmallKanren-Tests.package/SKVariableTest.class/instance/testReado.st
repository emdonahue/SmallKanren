tests
testReado
	| b c |
	b := SKVar new.
	c := SKVar new.
	self assert: (SKVar read: #(a b (c d)) o: (Dictionary with: #b->b with: #c->c)) equals: {#a. b. {c. #d}} asConsR.
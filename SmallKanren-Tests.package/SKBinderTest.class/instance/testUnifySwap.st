as yet unclassified
testUnifySwap
	self assert: ( ((a >< x) === ( b >< x)) ) size equals: 1.
	self assert: ( ((a >< x) === ( b >< x)) & (x === a) ) isEmpty.
	self assert: ( ((a >< x) === ( b >< x)) & (x === b) ) isEmpty.
	self assert: ( ((a >< x) === ( b >< x)) & (x === c) ) size equals: 1.
	self assert: ( ((a >< x) === ( b >< x)) & (y === x) & (y === a) ) isEmpty.
	self assert: ( ((a >< x) === ( b >< x)) & (y === x) & (y === b) ) isEmpty.
	self assert: ( ((a >< a) === ( b >< x)) & (x === a) ) isEmpty.
	self assert: ( ((a >< a) === ( b >< x)) & (x === b) ) size equals: 1.
	self assert: ( ((a >< x) === ( b >< b)) & (x === b) ) isEmpty.
	self assert: ( ((a >< x) === ( b >< b)) & (x === a) ) size equals: 1.
	self assert: ((a >< a) === ( b >< b)) size equals: 1.
	self assert: ((a >< a) === ( b >< a)) isEmpty.
	self assert: ((a >< b) === ( b >< b)) isEmpty.
	self assert: ( ((a >< x) === ( b >< b)) & (x === y) & (y === b) ) isEmpty.
	self assert: ( (y === b) & ((a >< x) === ( b >< b)) & (x === y) ) isEmpty.
	self assert: ( ((a >< x) === ( b >< y)) & (y === a) ) isEmpty.
	self assert: ( ((a >< x) === ( b >< y)) & (x === b) ) isEmpty.	
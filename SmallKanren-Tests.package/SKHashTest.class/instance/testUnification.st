as yet unclassified
testUnification
	self assert: (a hash: x) size equals: 1.
	self assert: ((a hash: x) & (x === b)) size equals: 1.
	self assert: ((x === b) & (a hash: x)) size equals: 1.
	self assert: ((a hash: x) & (x === a)) isEmpty..
	self assert: ((x === a) & (a hash: x)) isEmpty.
	self assert: ((x === (Cons with: a)) & (a hash: x)) isEmpty.
	self assert: ((a hash: x) & (x === (Cons with: a))) isEmpty.
	self assert: ((x === (Cons with: y)) & (y === a) & (a hash: x)) isEmpty.
	self assert: ((a hash: x) & (y === a) & (x === (Cons with: y))) isEmpty.
	self assert: ((x === (b >< y)) & (y === a) & (a hash: x)) isEmpty.
	self assert: ((x === (b >< y)) & (a hash: x) & (y === a)) isEmpty.
	self assert: ((a hash: x) & (x === (b >< y)) & (y === a)) isEmpty.
	self assert: ((a hash: x) & (y === a) & (x === (b >< y))) isEmpty.
	self assert: ((x === (b >< y)) & (a hash: x) & (y === a)) isEmpty.
	self assert: ((x === (b >< y)) & (y === a) & (a hash: x)) isEmpty.
	self assert: ((x === (a >< y)) & (y === a) & (a hash: x)) size equals: 1.
	self assert: ((x === (a >< y)) & (a hash: x) & (y === a)) size equals: 1.
	self assert: ((a hash: x) & (x === (a >< y)) & (y === a)) size equals: 1.
	self assert: ((a hash: x) & (y === a) & (x === (a >< y))) size equals: 1.
	self assert: ((x === (a >< y)) & (a hash: x) & (y === a)) size equals: 1.
	self assert: ((x === (a >< y)) & (y === a) & (a hash: x)) size equals: 1.
	self assert: ((x === (Cons with: (a >< y))) & (y === a) & (a hash: x)) size equals: 1.
	self assert: ((x === (Cons with: (b >< y))) & (y === a) & (a hash: x)) isEmpty.
	
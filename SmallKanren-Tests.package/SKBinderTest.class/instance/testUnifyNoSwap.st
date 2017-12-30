as yet unclassified
testUnifyNoSwap
	self assert: ( a >< a === ( a >< b ) ) isEmpty.
	self assert: ( a >< a === ( a >< a ) ) size equals: 1.
	self assert: ( a >< 1 === ( a >< 1 ) ) size equals: 1.
	self assert: ( a >< 1 === ( a >< 2 ) ) isEmpty.
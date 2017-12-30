as yet unclassified
testSkSwapNoms
	self assert: ( 42 skSwapNoms: swap ) equals: 42.
	self assert: ( '42' skSwapNoms: swap ) equals: '42'.
	self assert: ( a skSwapNoms: swap ) equals: b.
	self assert: ( b skSwapNoms: swap ) equals: a.
	self assert: ( c skSwapNoms: swap ) equals: c.
	self assert: ( c skSwapNoms: ( (c swap: a) , swap ) ) equals: a.
	self assert: ( b skSwapNoms: ( (c swap: a) , swap ) ) equals: c.
	self assert: ( a >< a skSwapNoms: swap ) equals: b >< b.
	self assert: ( ( Cons  with: a with: b ) skSwapNoms: swap ) equals: ( Cons with: b with: a ).
	self assert: ( x skSwapNoms: Cons new ) equals: x.
	self assert: ( x skSwapNoms: swap ) swaps equals: swap.
	
	
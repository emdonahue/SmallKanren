as yet unclassified
testSuspension
	self assert: ( (SKSuspension new term: a; swaps: Cons  new) skHash: a state: state ) equals: nil.
	self assert: ( (SKSuspension new term: b; swaps: Cons new) skHash: a state: state ) equals: state.
	self assert: ( (SKSuspension new term: b; swaps: (Cons with: (Cons car: a cdr: b))) 
		skHash: a state: state ) equals: nil.
	self assert: ( (SKSuspension new term: a; swaps: (Cons with: (Cons car: a cdr: b))) 
		skHash: a state: state ) equals: state.
	self assert: ( (SKSuspension new term: c; swaps: 
		(Cons with: (Cons car: c cdr: b) with: (Cons car: a cdr: b))) 
		skHash: a state: state ) equals: state.
	self assert: ( (SKSuspension new term: a; swaps: 
		(Cons with: (Cons car: c cdr: b) with: (Cons car: a cdr: b))) 
		skHash: c state: state ) equals: nil.
	
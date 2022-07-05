checking
fire: aVal in: aState
	<todo> "Full unification requires the runtime. This is a temporary 
hack."
	
	| sm smd s |
	sm := aState walk: sum.
	smd := aState walk: summand.
	
	aVal isSKVar ifFalse: [ 
	smd isSKVar ifFalse: [ ^ aState unify: sm with: aVal + smd runtime: nil ].
	sm isSKVar ifFalse: [ ^ aState unify: smd with: sm - aVal runtime: SKRuntime new ].
	^ (aState add: smd constraint: (self class new sum: sm; summand: aVal)). ].
	
	smd isSKVar | sm isSKVar ifFalse: [ ^ aState unify: aVal with: sm - smd ].
	"At least one other is var, so just hang it on the one we know."
	s := aState add: aVal constraint: (self class new sum: sm; summand: smd).
	smd isSKVar ifTrue: [ s := s add: smd constraint: (self class new sum: sm; summand: aVal). ].
	^ s.
	
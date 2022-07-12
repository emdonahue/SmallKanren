streaming
step: aRuntime
	"When we step a reused mplus, we implicitly want to check for a fixed point, so step all children until one that breaks the fixed point is found. If we are at a fixed point, just return self."
	"^ right + (left step: aRuntime)." <todo>
	"^ (left step: aRuntime) ifFixedPoint: left step: right else: self runtime: aRuntime."
	| l r |
	l := left step: aRuntime.
	l == left ifFalse: [ ^ right + l ].
	r := right step: aRuntime.
	r == right ifFalse: [ ^ left + r ].
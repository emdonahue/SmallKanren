unifying
unify: left with: right
	"Pure substitutions cannot have any scheduled goals, so no bindings need be checked."
	| l |
	left == right ifTrue: [ ^ self ].
	l := self walk: left.
	l == right ifTrue: [ ^ self ].
	^ self unify: l noWalk: (self walk: right).
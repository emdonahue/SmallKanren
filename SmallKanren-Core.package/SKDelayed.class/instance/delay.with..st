delaying
delay: aVar with: aConstraint
	"Called by a delay constraint when aVar is free, guaranteed to either fail a type constraint check OR delay the package."

	<type: #isSKVar type: #isConstraint returns: #(AndC SKDelayed #packageC)>
	| c |
	c := self constraints at: aVar.	"Since a delayed package must have delayed constraints, the constraint store is guaranteed to be non-empty."
	^ (c constrain: aVar with: aConstraint in: state)
		delay:
			(c isDelayed
				ifTrue: delayedVars
				ifFalse: [ delayedVars add: aVar ])	"If c is already delayed, we don't need to cache it again."
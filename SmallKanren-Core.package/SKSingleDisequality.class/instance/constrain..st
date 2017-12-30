merging
constrain: aState
	"Apply this constraint to the variable. If the value is also a Var, apply the constraint to that variable too. We do this so that a change to either will fire the constraint."

	^ (right isSKVar
		ifTrue: [ aState constrain: right with: self ]
		ifFalse: aState) constrain: left with: self
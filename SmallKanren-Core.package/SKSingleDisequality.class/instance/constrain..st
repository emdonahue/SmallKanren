merging
constrain: aState
	"Apply this constraint to the variable. If the value is also a Var, apply the constraint to that variable too. We do this so that a change to either will fire the constraint."
	<todo>
	"add an inverse type DE so it knows which value to reduceFirst with"
	^ (right isSKVar
		ifTrue: [ aState add: right constraint: self ]
		ifFalse: aState) add: left constraint: self
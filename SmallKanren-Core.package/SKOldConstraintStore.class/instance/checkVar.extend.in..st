checking
checkVar: aValue extend: aVar in: aState

	"Called by state to check the constraint and return a new state if it passes, or a failed state if it does not. Throw away the constraints on this Var when done, as it is no longer free and can have no constraints."

	"make this polymorphic"

	<todo>
	<type: #VoidC type: #SKVar type: #SKPackage type:
	#( OrC SKPackage SKFailure )>
	| c s |
	c := self at: aVar.
	s := c checkVar: aValue extend: aVar in: aState.
	s isFailure ifTrue: [ ^ s ].
	^ c eager: aVar val: aValue in: s
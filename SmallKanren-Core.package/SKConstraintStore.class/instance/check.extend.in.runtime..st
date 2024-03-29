checking
check: aValue extend: aVar in: aState runtime: aRuntime
	"Called by state to check the constraint and return a new state if it passes, or a failed state if it does not. Throw away the constraints on this Var when done, as it is no longer free and can have no constraints."

	"make this polymorphic"

	<todo>
	<type: #ObjectC type: #SKVar type: #SKState returns: #(OrC SKState SKFailure)>
	| c s |
	c := self at: aVar.
	s := c check: aValue extend: aVar in: aState.
	s ifFailure: [ ^ s ].
	^ c eager: aVar val: aValue in: s runtime: aRuntime.
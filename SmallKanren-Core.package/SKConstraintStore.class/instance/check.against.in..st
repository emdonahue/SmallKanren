constraining
check: aVar against: aValue in: aState
	"Called by state to check the constraint and return a new state if it passes, or a failed state if it does not. Throw away the constraints on this Var when done, as it is no longer free and can have no constraints."
	<todo> "make this polymorphic"
	<type: #SKVar type: #ObjectC type: #SKState returns: #(OrC SKState SKFailure)>
	| c s |
	c := self at: aVar. 
	s := c check: aVar remove: aValue in: aState.
	s isFailure ifTrue: [ ^ s ].
	^ c eager: aVar val: aValue in: s.
delaying
extendButDelayWith: aVar and: aValue
	"give state one operation to tweak constraints and substitution simultaneously"

	"this might be where we could get the hashmap to return both its removed form and the removed item at once"
	
	<todo>
	| s d c |
	s := state extend: aVar with: aValue.
	c := s constraints at: aVar.
	d := (s unconstrain: aVar) asDelayed.
	self assert: [ s constraints == state constraints ].
	"^ s constraints checkConstraintsOn: aVar against: aValue in: d."
	^ c checkAgainst: aValue in: d "if c is a delayed, might return any unsuspended stream"
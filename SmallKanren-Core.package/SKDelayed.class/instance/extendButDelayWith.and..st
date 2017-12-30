undelaying
extendButDelayWith: aVar and: aValue
	"give state one operation to tweak constraints and substitution simultaneously"

	"this might be where we could get the hashmap to return both its removed form and the removed item at once"

	<todo>
	| s d |
	s := state extend: aVar with: aValue.
	d := (s unconstrain: aVar) asDelayed.
	self assert: [ s constraints == state constraints ].
	"s := s checkConstraintsOn: aVar boundTo: aValue."
	"^ constraints checkConstraintsOn: aVar against: aValue in: (self unconstrain: aVar)"
	
	s := s constraints checkConstraintsOn: aVar against: aValue in: d.
	"s := s unconstrain: aVar."
	"(state checkConstraintsOn: aVar boundTo: aGround) asDelayed"
	"^ (s checkConstraintsOn: aVar boundTo: aValue) asDelayed"
	^ s
	"^ (state constraints checkConstraintsOn: aVar against: aValue in: s) asDelayed"
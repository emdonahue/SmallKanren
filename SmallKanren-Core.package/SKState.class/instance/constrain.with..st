constraining
constrain: aVar with: aConstraint
	<todo>
	"switch this to a contract"
	"Called by a Constraint during firing to add additional, simplified constraints to the store. This will ultimately call Constraint>>#constrain:with:in: to merge constraints if some already exist on aVar."

	| s |
	s := constraints constrain: aVar with: aConstraint in: self.
	self assert: [ s isState | s isEmptyStream ].
	^ s.
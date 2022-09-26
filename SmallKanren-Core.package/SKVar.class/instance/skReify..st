reification
skReify: aReifier
	<type: #(OrC SKSubstitution SKTermCopier #SKOldConstraintStore) type: #VoidC>
	| walked |
	walked := aReifier walk: self.
	walked == self ifTrue: [ ^ self ].	"We want to continue to walk vars unless we are already at the end of the walk and receive a free var."
	^ aReifier reify: walked.
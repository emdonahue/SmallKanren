unifying
skOccurs: aVar in: aSubstitution
	"Checks whether aVar occurs in the structure bound to self, which is a var."
	<type: #SKVar type: #SKSubstitution returns: #(OrC SKSubstitution SKFailure)>
	| walked |
	self == aVar ifTrue: [ ^ SKStream failure ]. "A var trivially 'occurs' in itself, so fail."
	walked := aSubstitution walk: self. "Look up the structure bound to self."
	walked == self ifTrue: [ ^ aSubstitution ]. "If self is a free var, there is no more structure, so aVar can't occur in it."
	^ walked skOccurs: aVar in: aSubstitution. "Otherwise, continue searching the walked structure for aVar."
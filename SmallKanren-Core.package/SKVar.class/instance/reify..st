reification
reify: aSubstitution
	| walked |
	walked := aSubstitution walk: self.
	walked == self
		ifTrue: [ ^  self ].	"We want to continue to walk vars unless we are already at the end of the walk."
	^ walked skReify: aSubstitution
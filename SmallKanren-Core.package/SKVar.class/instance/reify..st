reification
reify: aSubstitution
	"if we walk to another free var, we dont necessarily have to reify that again. we should only need to re-reify Cons. conversely, can just skip vars since constants wont take much lookup."

	<todo>
	| walked |
	walked := aSubstitution walk: self.
	walked == self ifTrue: [ ^ self ].	"We want to continue to walk vars unless we are already at the end of the walk and receive a free var."
	^ walked skReify: aSubstitution.
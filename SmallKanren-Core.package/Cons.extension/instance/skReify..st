*SmallKanren-Core
skReify: aSubstitution
	<type: #(OrC SKSubstitution SKTermCopier SKConstraintStore) type: #Cons>
	"Lists reify their contents by sending them back to the reifier."
	^ self ifNotEmpty:
		[ :s | self class car: (aSubstitution reify: s car) cdr: (aSubstitution reify: s cdr) ]
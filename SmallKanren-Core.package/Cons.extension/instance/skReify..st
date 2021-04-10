*SmallKanren-Core
skReify: aSubstitution
	<type: #(OrC SKSubstitution SKTermCopier SKConstraintStore) returns: #Cons>
	"Lists reify their contents by sending them back to the reifier."
	^ self ifNotEmpty:
		[ :s | self class car: (aSubstitution reify: s peek) cdr: (aSubstitution reify: s step ) ]
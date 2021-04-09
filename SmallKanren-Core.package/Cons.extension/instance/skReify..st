*SmallKanren-Core
skReify: aSubstitution
	<type: #(OrC SKSubstitution SKTermCopier SKConstraintStore) returns: #Cons>
	"Lists reify their contents."
	^ self ifNotEmpty:
		[ :s | self class car: (aSubstitution reify: s peek) cdr: (aSubstitution reify: s step ) ]
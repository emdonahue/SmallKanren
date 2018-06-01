*SmallKanren-Core
skReify: aSubstitution
	^ self
		ifNotEmpty:
			[ :s | self class car: (aSubstitution reify: s peek) cdr: (aSubstitution reify: s step ) ]
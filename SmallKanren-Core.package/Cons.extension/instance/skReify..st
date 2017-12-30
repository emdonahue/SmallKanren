*SmallKanren-Core
skReify: aSubstitution
	^ self ifNotEmpty: [ :s | self class car: (s peek skReify: aSubstitution ) cdr: (s step skReify: aSubstitution  ) ]
	
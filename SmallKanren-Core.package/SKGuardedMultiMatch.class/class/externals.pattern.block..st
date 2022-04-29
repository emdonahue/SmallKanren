as yet unclassified
externals: someExternals pattern: aPattern block: aBlock 
	| vars pattern names i |
	i := 0.
	vars := SmallDictionary new.
	pattern := aPattern collect: [ :p | self fromPatternElement: p vars: vars ].
	names := aBlock argumentNames.
	vars valuesDo: [ :v | i := i+1. v tag: (names at: i ifAbsent: #_) ].
	^ self new 
		externals: someExternals; 
		pattern: pattern; 
		internals: vars values; 
		values: (Array new: vars size);
		block: aBlock.
instance creation
fromPattern: aPattern block: aBlock
	| vars pattern names i |
	i := 0.
	vars := SmallDictionary new.
	pattern := aPattern collect: [ :p | self fromPatternElement: p vars: vars ].
	names := aBlock argumentNames.
	vars valuesDo: [ :v | i := i+1. v tag: (names at: i) ].
	^ self new pattern: pattern; vars: vars values; block: aBlock.
instance creation
fromPattern: aPattern block: aBlock
	| vars pattern names |
	vars := SmallDictionary new.
	pattern := self fromPattern: aPattern vars: vars.
	names := aBlock argumentNames.
	vars values doWithIndex: [ :v :i | v tag: (names at: i) ].
	^ self new pattern: pattern; vars: vars values; block: aBlock.
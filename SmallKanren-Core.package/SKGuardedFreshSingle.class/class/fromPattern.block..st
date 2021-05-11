instance creation
fromPattern: aPattern block: aBlock
	| vars pattern |
	vars := OrderedDictionary new.
	pattern := self fromPattern: aPattern vars: vars.
	^ self new pattern: pattern; vars: vars values; block: aBlock.
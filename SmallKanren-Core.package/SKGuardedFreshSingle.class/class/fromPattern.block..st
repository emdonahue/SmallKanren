instance creation
fromPattern: aPattern block: aBlock
	| vars pattern |
	vars := OrderedDictionary new.
	pattern := self fromPattern: aPattern vars: vars.
	aBlock argumentNames with: vars asArray do: [ :n :v | v tag: n ].
	^ self new pattern: pattern; vars: vars values; block: aBlock.
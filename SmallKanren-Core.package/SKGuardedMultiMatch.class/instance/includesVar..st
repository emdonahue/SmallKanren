testing
includesVar: aVar
	self haltIf: [externals includes: aVar].
	^ false.
	"^ vars includes: aVar."
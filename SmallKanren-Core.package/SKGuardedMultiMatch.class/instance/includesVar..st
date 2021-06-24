testing
includesVar: aVar
	self haltIf: [var includes: aVar].
	^ false.
	"^ vars includes: aVar."
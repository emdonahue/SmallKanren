*SmallKanren-Core
skReify: aSubstitution
	^ self collect: [ :x | x skReify: aSubstitution ]
*SmallKanren-Core
skReify: aSubstitution
	"Arrays reify their contents."
	^ self collect: [ :x | x skReify: aSubstitution  ]
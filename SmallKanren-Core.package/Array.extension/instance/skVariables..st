*SmallKanren-Core
skVariables: aSet
	^ self inject: aSet into: [ :s :x | x skVariables: s ]
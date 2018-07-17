*SmallKanren-Core
skAlphaHash
	^ self ifEmpty: [ self class hash ] ifNotEmpty: [ :p | p peek skAlphaHash bitXor: p step skAlphaHash  ]
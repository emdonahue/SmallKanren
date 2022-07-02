*SmallKanren-Core
skAlphaHash
	^ self ifEmpty: [ self class hash ] ifNotEmpty: [ :p | p car skAlphaHash bitXor: p cdr skAlphaHash  ]
*SmallKanren-Core
skOccurs: aVar in: aState
	^ self ifEmpty: aState ifNotEmpty: [ :s | (s peek skOccurs: aVar in: aState) checkOccurrenceOf: aVar in: s step ]
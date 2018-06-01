reifying
reify: aVar
	aVar isSKVar
		ifTrue: [ ^ hashmap at: aVar ifAbsent: aVar ].
	^ aVar skReify: self
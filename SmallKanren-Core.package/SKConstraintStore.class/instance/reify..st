reifying
reify: aVar
	aVar isSKVar ifTrue: [ ^ hashmap at: aVar ifPresent: [ :c | 
			^ SKReifiedConstraint new var: aVar; constraint: c ] ifAbsent: aVar ].
	^ aVar skReify: self
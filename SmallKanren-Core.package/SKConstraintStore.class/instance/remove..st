removing
remove: aVar
	^ self copy hashmap: (hashmap without: aVar)
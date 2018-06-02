removing
remove: aVar
	^ (reverse remove: aVar) forward: (forward remove: aVar)
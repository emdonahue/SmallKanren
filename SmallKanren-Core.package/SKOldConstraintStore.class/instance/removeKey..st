removing
removeKey: aVar

	^ self copy bindings: (hashmap copy
			   removeKey: aVar ifAbsent: [ Error signal ];
			   yourself)
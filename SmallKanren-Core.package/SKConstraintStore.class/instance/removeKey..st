removing
removeKey: aVar

	^ self copy hashmap: (hashmap copy
			   removeKey: aVar ifAbsent: [ Error signal ];
			   yourself)
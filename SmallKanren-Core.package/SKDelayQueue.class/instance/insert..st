adding
insert: aVar
	^ self insert: aVar ifAbsent: [ ^ self add: aVar ]
running
excludes: aValue
	^ (super excludes: aValue) ifTrue: true
		ifFalse: [ next excludes: aValue ]
testing
isAbsent: aValue
	^ (super isAbsent: aValue) ifTrue: true
		ifFalse: [ rest isAbsent: aValue ]
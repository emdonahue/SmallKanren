testing
ifEmpty: aBlock ifNotEmpty: bBlock
	^ self isEmpty ifTrue: aBlock ifFalse: [ bBlock value: self ]
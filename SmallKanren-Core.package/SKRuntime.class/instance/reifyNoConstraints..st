reification
reifyNoConstraints: term
	^ self atEnd ifTrue: term ifFalse: [ self next peek substitution reify: term ]
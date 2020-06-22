reification
reifyNoConstraints: term
	^ self atEnd ifTrue: term ifFalse: [ self peek substitution reify: term ]
disunifying
addDisequalities: aState
	| d |
	d := self asDisequality.
	^ (self val isSKVar ifTrue: [ aState add: self val constraint: d ] ifFalse: [ aState ])
		add: self var constraint: d.
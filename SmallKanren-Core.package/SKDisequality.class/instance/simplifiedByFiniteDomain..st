simplifying
simplifiedByFiniteDomain: aDomain
	self val isSKVar ifTrue: [ ^ self ].
	(aDomain includes: self val) ifFalse: [ ^ SKConstraint satisfied ].
	
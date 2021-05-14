as yet unclassified
vars: anArray block: aBlock
	| var |
	var := anArray detect: [ :v | v isSKVar ] ifNone: [ ^ aBlock valueWithArguments: anArray ].
	^ (self new vars: anArray; block: aBlock) asGoal: var.
as yet unclassified
do: aBlock separatedBy: bBlock 
	| separate |
	separate := false.
	self do: [ :e | 
		separate ifTrue: [ bBlock value ].
		aBlock value: e.
		separate := true. ].
	
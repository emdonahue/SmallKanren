as yet unclassified
read: goalArray o: varDict
	^ goalArray asCons collect: [ :e | 
		e isArray ifTrue: [ self read: e o: varDict ]
			ifFalse: [ varDict at: e ifAbsent: e ] ].
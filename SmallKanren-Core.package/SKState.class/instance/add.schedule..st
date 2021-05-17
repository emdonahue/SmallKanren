scheduling
add: aVar schedule: aSchedule
	| cp ncp |
	cp := (schedule detect: [ :x | x isCons ifTrue: [ x car = aVar ]] ifNone: [ nil ]).
	ncp := cp ifNil: [ aVar cons: aSchedule ] ifNotNil: [ aVar cons: (cp cdr compress: aSchedule) ].
	^ self copy schedule: ((schedule remove: cp) append: ncp cons).
*SmallKanren-Core
carCdrIn: aBlock
	^ self ifEmpty: SKGoal fail ifNotEmpty: [ :s | ^ aBlock value: s peek value: s step ].
	"vars := Array new: aBlock argumentCount.
	vars at: 1 put: self car.
	vars at: 2 put: self cdr.
	(aBlock argumentNames allButFirst: 2) doWithIndex: [ :name :i | vars at: i + 2 put: (SKVar tag: name) ].
	^ aBlock valueWithArguments: vars"
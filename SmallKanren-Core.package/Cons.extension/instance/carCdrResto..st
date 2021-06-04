*SmallKanren-Core
carCdrResto: aBlock
	<todo> "can wait until === succeeds to find out if we need to call the block"
	^ self ifEmpty: SKGoal fail 
		ifNotEmpty: [ :s | 
			s car isCons ifTrue: [ ^ (aBlock value: s car car value: s car cdr value: s cdr) asGoal ].
			s car isSKVar ifTrue: [ | a d| a := SKVar new. d := SKVar new. 
				^ (s car === (a cons: d)) & (aBlock value: a value: d value: s cdr) asGoal ].
			^ SKGoal fail ]
subclassresponsibility
bind: aGoal runtime: aRuntime
	^ self class streams2: ((streams collect: [ :s | s bind: aGoal runtime: aRuntime ]) 
		select: [ :s | s isFailure not ]).
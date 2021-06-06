laziness
fire: aVal in: aState runtime: aRuntime
	aVal isCons ifFalse: [ ^ SKStream failure ].
	aVal ifEmpty: [ ^ SKStream failure ].
	^ (self groundGoal: aVal) run: aState runtime: aRuntime.
	
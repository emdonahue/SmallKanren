*SmallKanren-Core
car: aCar list: aSize o: aBlock
	<todo> "can wait until === succeeds to find out if we need to call the block"
	| vars h |
	^ self ifEmpty: SKGoal fail ifNotEmpty: [ :s | 
		vars := Array new: aSize.
		h := s cdr.
		1 to: aSize do: [ :i |
			h isSKVar ifTrue: [ vars at: i put: SKVar new ]
				ifFalse: [
			h isCons ifTrue: [ h ifEmpty: [ ^ SKGoal fail ].
				 vars at: i put: h car. h := h cdr. ]
				ifFalse: [ ^ SKGoal fail ] ] ].
		h isEmptyo & 
		(s peek === aCar) & (aBlock valueWithArguments: vars) ]
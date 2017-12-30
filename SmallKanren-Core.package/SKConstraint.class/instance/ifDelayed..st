testing
ifDelayed: aBlockClosure
	^ self isDelayed ifTrue: aBlockClosure ifFalse: self
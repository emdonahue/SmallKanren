tabling
ifFixedPoint: leftStream step: rightStream else: mplusStream runtime: aRuntime
	self == leftStream ifTrue: [ 
		^ (rightStream step: aRuntime) 
			ifFixedPoint: rightStream 
			return: mplusStream
			elsePlus: leftStream ].
	^ rightStream + self. "Normal mplus"
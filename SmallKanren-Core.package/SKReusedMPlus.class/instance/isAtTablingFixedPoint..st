testing
isAtTablingFixedPoint: aRuntime
	^ (left isAtTablingFixedPoint: aRuntime) and: [ right isAtTablingFixedPoint: aRuntime ].
testing
waitCheck: aRuntime
	^ (left waitCheck: aRuntime) and: [ right waitCheck: aRuntime ].
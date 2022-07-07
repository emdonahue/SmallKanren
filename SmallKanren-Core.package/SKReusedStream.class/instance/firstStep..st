streaming
firstStep: aRuntime
	(self waitCheck: aRuntime) ifTrue: [ ^ SKStream failure runtime: aRuntime ].
	^ self step: aRuntime.
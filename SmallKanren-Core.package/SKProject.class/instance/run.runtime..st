running
run: aState runtime: aRuntime
	| projection |
	projection := var 
		ifNil: [ block cull: aState cull: aRuntime ] 
		ifNotNil: [ block cull: var cull: aState cull: aRuntime ].
	projection isGoal ifTrue: [ ^ projection run: aState runtime: aRuntime ].
	^ projection.
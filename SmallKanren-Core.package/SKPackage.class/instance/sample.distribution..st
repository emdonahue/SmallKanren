probability
sample: aSample distribution: aDistribution
	| obs |
	obs := self walk: aSample.
	obs isSKVar ifTrue: [ ^ self add: obs constraint: (SKSampleConstraint new distribution: aDistribution) ].
	^ self copy jointDistribution: (self jointDistribution sample: obs distribution: aDistribution).
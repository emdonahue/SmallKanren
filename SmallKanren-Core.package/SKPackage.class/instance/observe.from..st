probability
observe: aSample from: aDistribution
	| obs |
	obs := self walk: aSample.
	obs isSKVar ifTrue: [ ^ self add: obs constraint: (SKObservationConstraint new distribution: aDistribution) ].
	^ self copy pseudoCounts: (self pseudoCounts observe: obs from: aDistribution).
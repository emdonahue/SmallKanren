probability
observe: aSample from: aDistribution
	| obs |
	obs := self walk: aSample.
	obs isSKVar ifTrue: [ ^ self check: obs constraint: (SKObservationConstraint new distribution: aDistribution; term: aSample) ].
	^ self pseudocounts: (self pseudocounts observe: obs from: aDistribution).
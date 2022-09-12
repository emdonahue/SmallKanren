accessing
sample: aSample
	^ (SKObservationConstraint new term: aSample; distribution: self) asGoal: aSample.
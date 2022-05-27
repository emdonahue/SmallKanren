probability
sample: aSample distribution: aDistribution

	| ds |
	ds := self distributions copy.
	ds at: aDistribution ifPresent: [ :e | ds at: aDistribution put: (e observe: aSample weight: likelihood) ] 
		ifAbsentPut: [ aDistribution expectations observe: aSample weight: likelihood ].
	^ ((self class new distributions: ds) weight: (aDistribution logLikelihood: aSample)) likelihood: likelihood + (aDistribution logLikelihood: aSample).
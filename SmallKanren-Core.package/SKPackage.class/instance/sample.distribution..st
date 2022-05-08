probability
sample: aSample distribution: aDistribution
	<todo> "Replace dictionary by functional hash map."
	| ds |
	ds := distributions ifNil: [ Dictionary new ] ifNotNil: [ distributions copy ].
	ds at: aDistribution ifPresent: [ :e | ds at: aDistribution put: (e observe: aSample) ] 
		ifAbsentPut: [ aDistribution expectations observe: aSample ].
	^ self copy likelihood: likelihood + (aDistribution logLikelihood: aSample); distributions: ds.
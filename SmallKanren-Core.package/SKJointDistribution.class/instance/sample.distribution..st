probability
sample: aSample distribution: aDistribution

	| ds |
	ds := self distributions copy.
	ds at: aDistribution ifPresent: [ :e | ds at: aDistribution put: (e observe: aSample) ] 
		ifAbsentPut: [ aDistribution expectations observe: aSample ].
	^ self class new distributions: ds.
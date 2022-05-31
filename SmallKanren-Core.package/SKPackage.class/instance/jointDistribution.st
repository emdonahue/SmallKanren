accessing
jointDistribution

	^ jointDistribution ifNil: [ jointDistribution := SKPseudoCounts new ].
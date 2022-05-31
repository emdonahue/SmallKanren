probability
observe: anObs from: aDistribution

	^ (self at: aDistribution 
		"Scale the new observation by all past likelihoods and add to pseudocounts."
		add: (aDistribution sufficientStatistics: anObs) * likelihood) 
		"Scale all past pseudocounts including new observation by the likelihood of the new observation."
		* (aDistribution logLikelihood: anObs).
		
	"ds := self distributions copy.
	ds at: aDistribution 
		ifPresent: [ :e | ds at: aDistribution put: ((aDistribution sufficientStatistics: anObs) * likelihood + e) ] 
		ifAbsentPut: [ (aDistribution sufficientStatistics: anObs) * likelihood ].		
	^ ((self class new distributions: ds) * (aDistribution logLikelihood: anObs)) likelihood: likelihood + (aDistribution logLikelihood: anObs)."
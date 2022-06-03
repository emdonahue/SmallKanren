as yet unclassified
exp: aLog
	aLog positive ifTrue: [ ^ aLog negated exp negated ]. "Positive logs are negative linear numbers."
	^ aLog exp.
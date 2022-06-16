streaming
firstStep: aRunner
	^ super firstStep: aRunner.
	"^ streams rest 
		ifEmpty: [ streams first mplusFirstStep: aRunner ]
		ifNotEmpty: [ :s | self class streams: s mplus: (streams first mplusFirstStep: aRunner) ]."
accessing
firstStep: aRunner

	^ (stream firstStep: aRunner)
		  produceTabledAnswersFrom: self
		  runtime: self notYetImplemented
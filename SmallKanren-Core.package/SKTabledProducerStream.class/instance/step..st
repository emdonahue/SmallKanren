subclassresponsibility
step: aRunner

	^ (stream step: aRunner)
		  produceTabledAnswersFrom: self
		  runtime: self notYetImplemented
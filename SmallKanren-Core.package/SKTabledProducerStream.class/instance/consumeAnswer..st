tabling
consumeAnswer: aRunner

	^ (stream consumeAnswer: aRunner)
		  produceTabledAnswersFrom: self
		  runtime: self notYetImplemented
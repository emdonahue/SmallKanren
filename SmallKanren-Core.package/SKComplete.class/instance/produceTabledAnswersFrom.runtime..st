tabling
produceTabledAnswersFrom: tabledStream runtime: anObject

	^ (tabledStream cacheStream: left) + (right
		   produceTabledAnswersFrom: tabledStream
		   runtime: self notYetImplemented)
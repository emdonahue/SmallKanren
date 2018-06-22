tabling
produceTabledAnswersFrom: tabledStream
	^ (tabledStream cacheStream: left) + (right produceTabledAnswersFrom: tabledStream ).
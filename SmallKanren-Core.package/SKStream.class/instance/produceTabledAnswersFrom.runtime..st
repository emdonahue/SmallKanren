tabling
produceTabledAnswersFrom: tabledStream runtime: anObject
	"If the stream underlying a tabled producer succeeds, maintain the tabled producer monitoring this stream."

	^ tabledStream copy stream: self.
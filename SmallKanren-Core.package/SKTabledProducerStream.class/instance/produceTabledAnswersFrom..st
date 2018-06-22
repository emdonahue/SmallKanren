tabling
produceTabledAnswersFrom: tabledStream
	"self hasAnswer
		ifTrue: [ ^ tabledStream cacheStream: self ].
	^ tabledStream copy stream: self."
	<todo>
	^ super produceTabledAnswersFrom: tabledStream
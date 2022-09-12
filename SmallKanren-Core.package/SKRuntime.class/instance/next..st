debugging
next: numAnswers
	^ (1 to: numAnswers) inject: self into: [ :r :_ | r next ].
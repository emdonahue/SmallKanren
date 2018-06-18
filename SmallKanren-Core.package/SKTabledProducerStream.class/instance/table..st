tabling
table: tabledStream
	self hasAnswer
		ifTrue: [ ^ tabledStream cacheStream: self ].
	^ tabledStream copy stream: self.
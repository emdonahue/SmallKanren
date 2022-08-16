*SmallKanren-Core
presento: aTerm
	self ifEmpty: [ ^ super presento: aTerm ].
	^ (super presento: aTerm) presento: aTerm in: self.
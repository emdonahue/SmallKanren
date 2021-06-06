as yet unclassified
car: aCar list: aSize o: aBlock
	|vars |
	vars := (aBlock argumentNames copyFrom: 1 to: aSize) collect: [ :n | self class tag: n].
	^ (SKGuardedMatch pattern: (aCar cons: vars asCons) vars: vars block: aBlock) asGoal: self.
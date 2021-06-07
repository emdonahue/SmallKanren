as yet unclassified
car: aCar list: aSize o: aBlock
	<todo> "remove the restriction that aCar cannot be a var by making a new class that piggybacks on guardedmatch but handles the non ground car case."
	<type: #(NotC SKVar) type: #Integer type: #BlockClosure returns: #SKGuardedMatch>
	|vars |
	vars := (aBlock argumentNames copyFrom: 1 to: aSize) collect: [ :n | self class tag: n].
	^ (SKGuardedMatch pattern: (aCar cons: vars asCons) vars: vars block: aBlock) asGoal: self.
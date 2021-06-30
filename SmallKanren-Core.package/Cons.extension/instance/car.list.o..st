*SmallKanren-Core
car: aCar list: aSize o: aBlock
	<type: #(NotC SKVar) type: #Integer type: #BlockClosure returns: #SKGoal>
	^ self ifEmpty: SKGoal fail
		ifNotEmpty: [ :s | | vars car |
			vars := (aBlock argumentNames copyFrom: 1 to: aSize) collect: [ :n | SKTaggedVar tag: n ].
			^ (s car === aCar) &
				(SKGuardedMultiMatch 
					var: {self}
					pattern: (aCar cons: vars asCons) cons
					vars: vars
					block: aBlock) ].
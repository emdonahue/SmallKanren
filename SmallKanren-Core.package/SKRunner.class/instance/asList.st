converting
asList
	| runner |
	runner := self.
	^ (((Cons fromBlock: [ runner := runner next ]) ) takeUntil: [ :r | r atEnd ]) collect: [ :r | r peek ]
converting
expandFresh
	^ block valueWithArguments: (block argumentNames collect: [ :n | SKVar tag: n ]).
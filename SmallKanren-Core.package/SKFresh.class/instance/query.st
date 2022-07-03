accessing
query
	^ block argumentNames collect: [ :n | SKVar tag: n ].
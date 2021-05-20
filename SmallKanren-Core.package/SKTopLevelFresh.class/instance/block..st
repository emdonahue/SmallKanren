accessing
block: aBlock
	super block: aBlock.
	query := (aBlock argumentNames collect: [ :n | SKVar tag: n ]).
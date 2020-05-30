parsing
isTerm: x
	^ (self is: x in: self nonLists) "| (self isList: x)"
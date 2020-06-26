occurscheck
occursSimple: a notIn: b sub: sub
	^( self is: b in: self values) | ([ :c :d | (b === (c cons: d)) & (self not: a equals: c type: self nonLists) & (self not: a equals: d type: self nonLists) ])
list
carIn: aBlock
	| cdr vars |
	cdr := SKVar new.
	vars := aBlock argumentNames collect: [ :name | SKTaggedVar new tag: name ].
	^ self === (vars first cons: cdr) &  (aBlock valueWithArguments: vars)
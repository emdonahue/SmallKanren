list
cdrIn: aBlock
	| car vars |
	car := SKVar new.
	vars := aBlock argumentNames collect: [ :name | SKTaggedVar new tag: name ].
	^ self === (car cons: vars first) & (aBlock valueWithArguments: vars)
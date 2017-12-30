list
carCdrIn: aBlock
	^ SKDelayedGoal new var: self; block: aBlock
	"| vars |
	vars := aBlock argumentNames collect: [ :name | SKTaggedVar new tag: name ].
	^ self === (vars first cons: vars second) & (aBlock valueWithArguments: vars)"
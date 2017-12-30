undelaying
step: aModel
	"unify ground does an unnecessary lookup in the constraint store for the var. we can shortcut that"

	"make sure to transfer any delayed cache info when we do the new asdelayed"

	<todo>
	self assert: [ state hasDelayed ].
	state constraints
		keysAndValuesDo: [ :var :const | 
			const
				ifDelayed: [ | s |
					  ^ s := var skUnifyGround: (SKVar new cons: SKVar new) in: self.
					 ] ].
	self assert: false	"should not happen"
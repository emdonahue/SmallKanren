undelaying
step: aModel
	"this call to unify ground to reuse the unifier to dispatch the constraint does an unnecessary lookup in the constraint store for the var. we can shortcut that...?"

	"make sure to transfer any delayed cache info when we do the new asdelayed"

	<todo>
	<type: #AnyC returns: #(OrC isNotPackage packageC)>
	^ delayedVars car skUnifyGround: ((SKVar tag: #undelay) cons: SKVar new) in: self
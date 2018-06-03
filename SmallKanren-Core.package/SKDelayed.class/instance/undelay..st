undelaying
undelay: aDelayedVar
	self halt.
	^ self undelaystep: (aDelayedVar var cons: aDelayedVar)
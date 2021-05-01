running
run: aState runtime: aRunner
	"Creates a SingleDelayed constraint from the suspended block and applies it to var."

	"we can check if the car unify fails and dont bother to apply constraint if so"

	<todo>
	| v cr ca |
	ca := SKVar new.
	cr := SKVar new.
	v := aState walk: var.
	"If this is the first delayed constraint on var, unify it with a new cons and hang the delayed block on the car in the suspended store."
	v isSKVar
		ifTrue: [ ^ (aState unify: v with: (ca cons: cr))
				suspendVar:
					(self constraint
						vars:
							{ca.
							cr.}) ].
	"If var has already been unified,"
	v isCons
		ifTrue: [ v
				ifNotEmpty: [ ^ v cdr isSKVar
						ifTrue: [ "else, if var has been unified for real, just fire the constraint."
							aState
								suspendVar:
									(self constraint
										vars:
											{v car.
											v cdr.}) ]
						ifFalse: [ (self constraint
								vars:
									{v car.
									v cdr.}) checkIn: aState runner: aRunner ]
					"but only with a placeholder from another delay, hang the delay on the same car variable in the suspended store." ] ].
	^ SKStream failure.
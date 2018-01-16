running
run: aState
	"Creates a SingleDelayed constraint from the suspended block and applies it to var."

	"we can check if the car unify fails and dont bother to apply constraint if so"

	<todo>
	| v cr ca |
	ca := SKVar new.
	cr := SKVar new.
	v := aState walk: var.
	v isSKVar
		ifTrue: [ ^ (aState unify: v with: (ca cons: cr))
				suspendVar:
					(self constraint
						var: cr;
						carVar: ca) ].
	v isCons
		ifTrue: [ v
				ifNotEmpty: [ ^ v cdr isSKVar
						ifTrue: [ aState
								suspendVar:
									(self constraint
										var: v cdr;
										carVar: v car) ]
						ifFalse: [ (self constraint var: v cdr; carVar: v car) checkIn: aState ] ] ].
	^ SKStream failure
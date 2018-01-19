running
run: aState
	"Creates a SingleDelayed constraint from the suspended block and applies it to var."

	"we can check if the car unify fails and dont bother to apply constraint if so"

	<todo>
	| v cr |
	cr := SKVar new.
	v := aState walk: var.
	v isSKVar
		ifTrue: [ ^ (aState unify: v with: (car cons: cr)) suspendVar: (self constraint var: cr) ].
	v isCons
		ifTrue: [ v
				ifNotEmpty: [ ^ v cdr isSKVar
						ifTrue: [ (aState unify: v car with: car) suspendVar: (self constraint var: v cdr) ]
						ifFalse: [ (self constraint var: v cdr) checkIn: (aState unify: v car with: car) ] ] ].
	^ SKStream failure
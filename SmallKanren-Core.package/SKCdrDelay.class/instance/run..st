running
run: aState
	"Creates a SingleDelayed constraint from the suspended block and applies it to var."

	"we can check if the car unify fails and dont bother to apply constraint if so"

	<todo>
	| v cr |
	cr := SKVar new.
	v := aState walk: var.
	v isSKVar
		ifTrue: [ ^ (aState unify: v with: (car cons: cr)) delay: cr with: self constraint ].
	v isCons
		ifTrue: [ ^ (aState unify: v with: (car cons: cr)) delay: cr with: self constraint ].
	^ SKStream failure
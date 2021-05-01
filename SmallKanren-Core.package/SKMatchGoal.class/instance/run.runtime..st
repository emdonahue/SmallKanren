running
run: aState runtime: aRunner
	<todo>
	"make this polymorphic, instead of checking the variable and generating the unneeded constraint"
	| term |
	term := aState walk: var.
	term isSKVar
		ifTrue: [ ^ aState suspendVar: self constraint ].
	^ self constraint checkAgainst: term in: aState runner: aRunner.
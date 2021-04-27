accessing
firstStep: aRunner
	| ans |
	<todo>
	"this can be made polymorphic"
	"This may be able to be done in one pass, but due to the statefulness of caches, even if a suspended stream fails in an early part of the check, its cache may be expanded by a later producer stream, even if that producer stream later fails. Thus, it is not simple to combine the waitCheck and the actual consume annswer step into one pass."
	self waitCheck
		ifFalse: [ ^ SKStream failure ].
	ans := self consumeAnswer: aRunner.	"tabledTopStep: self."
	ans isFailure
		ifTrue: [ ^ self ].
	^ ans + self.
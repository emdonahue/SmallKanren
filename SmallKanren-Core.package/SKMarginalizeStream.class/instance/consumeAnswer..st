subclassresponsibility
consumeAnswer: aRunner
	<todo>
	"extra wait checking may be unneccessary"		
	| st |
	self waitCheck ifFalse: [ ^ SKStream failure ].
	st := (stream consumeAnswer: aRunner).
	st isFailure ifTrue: [ ^ self ].
	self haltIf: [ st isState not ].
	state ifNil: [ ^ stream marginalize: st pseudocounts: st pseudoCounts ].
	^ stream marginalize: (state likelihood < st likelihood ifTrue: st ifFalse: state)
		pseudocounts: pseudocounts + st pseudoCounts.
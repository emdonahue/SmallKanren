streaming
mplus: anAnswer
	<todo>
	"This is where MPlus can be re-enabled"
	anAnswer isDelayed | anAnswer isDelayedPlus
		ifTrue: [ ^ SKDelayedPlus new
				left: self;
				right: anAnswer ].
	"self assert: [ (anAnswer isDelayed | anAnswer isDelayedPlus) not ]."
	"^ SKMPlus left: self right: anAnswer"
	^ SKDelayedPlus left: self right: anAnswer
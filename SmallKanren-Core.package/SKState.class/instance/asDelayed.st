delaying
asDelayed
	"self assert: [ self hasDelayed ]."
	^ SKDelayed new state: self.
	"self hasDelayed
		ifTrue: [ ^ SKDelayed new state: self ]
		ifFalse: self"
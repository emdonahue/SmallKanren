delaying
hasDelayed
	"This property should be cached, in class info, not parsed from store each time"

	<todo>
	constraints keysAndValuesDo: [ :var :const | const ifDelayed: [ ^ true ] ].
	^ false
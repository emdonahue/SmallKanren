streaming
step: aRunner
	<todo> "This is a duplicate call to isLazy, which may be expensive."
	"^ self isLazy ifTrue: [ self eager: aRunner ]"
	^ self isLazy ifTrue: [ self run: aRunner ]
	ifFalse: SKStream failure.
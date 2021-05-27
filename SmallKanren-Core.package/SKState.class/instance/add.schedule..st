scheduling
add: aVar schedule: aFresh
	<todo> "deliberate on whether fresh needs to hold its own var or whether that should be a container class"
	"| fresh |
	fresh := schedule detect: [ :f | f isGuarding: aVar ] ifFound: [ :f | f compress: aFresh ] ifNone: aFresh.
	fresh = SKConstraint unsatisfiable ifTrue: [ ^ SKStream failure ]."
	^ self setSchedule: (schedule 
		replace: [ :f | f isGuarding: aVar ]
		ifFound: [ :f | (f compress: aFresh) ifFail: [ ^ SKStream failure ] ]
		ifNone: [ schedule add: aFresh ]).
scheduling
add: aVar schedule: aFresh
	<todo> "deliberate on whether fresh needs to hold its own var or whether that should be a container class"
	| fresh sch |
	fresh := aFresh var: aVar.
	sch := schedule rejectOne: 
		[ :f | (f isGuarding: aVar) 
			ifTrue: [ fresh := f compress: aFresh. true ]].
	^ self setSchedule: (sch add: fresh).
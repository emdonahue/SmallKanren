scheduling
add: aVar schedule: aFresh
	<todo> "deliberate on whether fresh needs to hold its own var or whether that should be a container class"
	^ self setSchedule: (schedule 
		replace: [ :f | f varEquals: aVar ]
		ifFound: [ :f | (f merge: aFresh) ifFailure: [ ^ SKStream failure ] ]
		ifNone: [ schedule add: aFresh ]).
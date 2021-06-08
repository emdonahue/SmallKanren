scheduling
add: aVar schedule: aFresh
	<todo> "deliberate on whether fresh needs to hold its own var or whether that should be a container class" "also, only need to set pairo if there is no current schedule on aVar"
	^ SKConstraint pairo check: aVar in: 
		(self setSchedule: (self schedule 
			replace: [ :f | f varEquals: aVar ]
			ifFound: [ :f | (aFresh merge: f) ifFailure: [ ^ SKStream failure ] ]
			ifNone: [ self schedule add: aFresh ])).
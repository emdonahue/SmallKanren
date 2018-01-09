undelaying
extendAndCheck: aVar withVar: bVar
	"May fail if constraints on aVar and bVar conflict, but cannot otherwise undelay the package since delayed constraints cannot be fired by a free var."

	<type: #isSKVar type: #isSKVar returns: #(AndC SKDelayed #packageC)>
	^ self extendAndCheck: aVar with: bVar
undelaying
checkVar: bVar extend: aVar runtime: aRuntime
	"May fail if constraints on aVar and bVar conflict, but cannot otherwise undelay the package since delayed constraints cannot be fired by a free var."

	<type: #isSKVar type: #isSKVar returns: #(OrC SKFailure #(AndC SKDelayed #packageC))>
	^ self check: bVar extend: aVar runtime: aRuntime
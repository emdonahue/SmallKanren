undelaying
extend: aVar checkVar: bVar runtime: aRuntime
	"May fail if constraints on aVar and bVar conflict, but cannot otherwise undelay the package since delayed constraints cannot be fired by a free var."

	<type: #isSKVar type: #isSKVar returns: #(OrC SKFailure (AndC SKDelayed #packageC))>
	^ self extend: aVar check: bVar runtime: aRuntime
checking
checkIn: aState runner: aRunner
	"which is faster, early fail streams or early fail goals? may change as we get rid of easy failing goals"

	^ aState bind: (block valueWithArguments: vars) runtime: aRunner.
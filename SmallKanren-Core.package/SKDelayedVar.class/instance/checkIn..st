checking
checkIn: aState
	"which is faster, early fail streams or early fail goals? may change as we get rid of easy failing goals"

	^ aState bind: (block valueWithArguments: vars) history: nil heuristic: SKInterleaving new
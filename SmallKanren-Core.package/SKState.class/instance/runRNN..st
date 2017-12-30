running
runRNN: anRNN 
	^ self copy score: (anRNN stateScore: self).
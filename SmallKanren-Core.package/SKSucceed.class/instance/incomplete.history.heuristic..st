streaming
incomplete: aState history: aName heuristic: aModel
	"^ aState"
	"This should be able to preempt suspending, but runner needs to be able to handle non incomplete start states if everything preempts"
	<todo>
	^ super incomplete: aState history: aName heuristic: aModel
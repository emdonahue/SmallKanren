running
run: aState runner: aRunner
	"This is the primary interface for running the goal that should be overridden by complex goals that need access to the runtime beyond just the state package."

	^ self run: aState
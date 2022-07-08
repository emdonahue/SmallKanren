debugging
expandWhileQueryEquals: aReifiedQuery runner: aRunner
	^ (left expandWhileQueryEquals: aReifiedQuery runner: aRunner) + (right expandWhileQueryEquals: aReifiedQuery runner: aRunner)
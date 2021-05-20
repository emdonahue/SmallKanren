debugging
expandWhileQueryEquals: aReifiedQuery runner: aRunner
	(aReifiedQuery skAlphaEquals: (self reify: aRunner query)) ifTrue: [ ^ (self step: aRunner) expandWhileQueryEquals: aReifiedQuery runner: aRunner ].
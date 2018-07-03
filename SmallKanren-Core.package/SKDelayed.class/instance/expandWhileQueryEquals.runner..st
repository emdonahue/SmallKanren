debugging
expandWhileQueryEquals: aReifiedQuery runner: aRunner
	(aReifiedQuery skAlphaEquals: (self reify: aRunner queryVars)) ifTrue: [ ^ (self step: aRunner) expandWhileQueryEquals: aReifiedQuery runner: aRunner ].
running
run: aState runner: aRunner
	^ (SKMatchConstraint new
		delayedVar: var;
		matchVars: vars;
		pattern: pattern;
		block: block) checkIn: aState runner: aRunner.
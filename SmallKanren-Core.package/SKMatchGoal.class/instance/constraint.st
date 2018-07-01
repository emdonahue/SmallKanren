accessing
constraint
	^ SKMatchConstraint new
				delayedVar: var;
				matchVars: vars;
				pattern: pattern;
				block: block
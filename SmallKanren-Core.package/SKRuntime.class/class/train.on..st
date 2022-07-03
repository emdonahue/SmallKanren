probability
train: aModel on: aGoal

	| model likelihood expectations epoch |
	model := aModel.
	expectations := SKPseudoCounts new.
	likelihood := Float negativeInfinity.

	^ Cons generate: [ 
			expectations := self expectations: model given: aGoal.
		  epoch := SKTrainingEpoch new
			  model: model;
			  likelihood: expectations likelihood; "The likelihood is of the current model, not the future, maximized model."
			  likelihoodDelta: (expectations likelihoodDelta: likelihood).
			model := expectations maximizeAll: model.
			likelihood := expectations likelihood.
			epoch. ]
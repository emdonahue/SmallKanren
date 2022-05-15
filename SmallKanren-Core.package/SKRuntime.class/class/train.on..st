instance creation
train: aModel on: aGoal
	| model likelihood joint oldModel converged |
	model := aModel.
	joint := SKJointDistribution new.
	likelihood := Float negativeInfinity.
	converged := false.
	
	"Stop when p'/p < 1.01 => log p' - log p > log 1.01"
	^ Cons generate: [ joint := (self fromPpl: aGoal model: model) maximize.
			oldModel := model.
			model := joint maximizeModel: model.
			{oldModel. joint likelihood } ] 
		until: [ | stopping | stopping := converged.  converged := converged or: joint likelihood - likelihood < 1.01 ln. likelihood := joint likelihood.  stopping ].
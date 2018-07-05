*SmallKanren-Core
tabled: tableName inputs: inputArgs outputs: outputArgs
	| inputs |
	inputs := inputArgs asCons.
	^ SKTabledGoal new
		tableName: tableName;
		inputs: inputs;
		outputs: inputs , outputArgs asCons;
		block: self.
*SmallKanren-Core
tabled: tableName inputs: tabledArgs
	| inputs |
	inputs := tabledArgs asCons.
	^ SKTabledGoal new
		tableName: tableName;
		inputs: inputs;
		outputs: Cons empty;
		block: self.
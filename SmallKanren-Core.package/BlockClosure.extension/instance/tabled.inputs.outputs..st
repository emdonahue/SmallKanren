*SmallKanren-Core
tabled: tableName inputs: inputArgs outputs: outputArgs
	^ SKTabledGoal new
		tableName: tableName;
		inputs: inputArgs asCons;
		outputs: outputArgs asCons;
		block: self.
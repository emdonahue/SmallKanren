*SmallKanren-Core
tabled: tableName o: tabledArgs
	^ SKTabledGoal new
		tableName: tableName;
		tabledArgs: tabledArgs asCons;
		block: self.
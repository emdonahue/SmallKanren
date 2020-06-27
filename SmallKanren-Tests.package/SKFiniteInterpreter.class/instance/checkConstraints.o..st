constraints
checkConstraints: env o: out
	"Runs all constraints. Called at the end of the program to simplify when constraints run."

	^ env === Cons empty & (out === Cons empty)
		| [ :sub :typeo :diseq :absento :diseqEnv :absentoEnv | 
			{(env === (sub cons: (typeo cons: diseq cons: absento cons) cons)).
			(self
				checkTypes: typeo
				in: env
				o: diseqEnv
				depth: self programLength).
			{(diseqEnv === Cons empty & (out === Cons empty)).
			((self
				checkDiseq: diseq
				in: diseqEnv
				o: absentoEnv
				depth: self programLength) & (absentoEnv === out))}} ]
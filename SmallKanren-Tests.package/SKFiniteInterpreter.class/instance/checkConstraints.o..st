constraints
checkConstraints: env o: out
	"Runs all constraints. Called at the end of the program to simplify when constraints run."

	^ env === Cons empty & (out === Cons empty)
		| [ :sub :typeo :diseq :absento :diseqEnv :absentoEnv | 

			{env === (sub cons: (typeo cons: diseq cons: absento cons) cons).
			self checkConstraints: typeo violation: #checkTypeo:in:o: in: env o: diseqEnv depth: self programLength.
			self checkConstraints: diseq violation: #checkDiseq:in:o: in: diseqEnv o: absentoEnv depth: self programLength.
			absentoEnv === out} ]
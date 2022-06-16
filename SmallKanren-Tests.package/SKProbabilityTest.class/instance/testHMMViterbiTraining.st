tests-hmm
testHMMViterbiTraining
	| hmm |	
		
		hmm := nil.
		hmm := [ :m :prevt :states :observations | 
		[ :pt :ss :os | 
		{{ss isEmptyo. os isEmptyo}.
		{{ss. os} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
			pt argmax: currs o: [ :st |
				{{st === 0. m fourth sample: curro. hmm valueWithArguments: {m. m second. nexts. nexto.}}.
				{st === 1. m third sample: curro. hmm valueWithArguments: {m. m first. nexts. nexto.}}} conde]]}} conde
		] tabled: #tabledhmm
			inputs: {prevt. states. observations}
	].
	
		
		self assert: ([ :m :q | hmm valueWithArguments: {m. m first. q. #(1 0) asCons.} ] asGoal train: {hight. lowt. highe. lowe}) likelihood exp > ((hight p * highe p) * ((1-hight p) * (1-lowe p))). "Ensure that the learned parameters are an improvement over the optimal viterbi decoding of the original parameters."
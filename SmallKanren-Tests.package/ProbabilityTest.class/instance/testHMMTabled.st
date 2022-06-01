tests-hmm
testHMMTabled
	| tabledhmm |
	
	tabledhmm := nil.
	tabledhmm := [ :prevt :states :observations | 
		[ :pt :ss :os | 
		{{ss isEmptyo. os isEmptyo}.
		{{ss. os} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
			pt marginalize: currs o: [ :st |
				{{st === 0. lowe sample: curro. tabledhmm valueWithArguments: {lowt. nexts. nexto.}}.
				{st === 1. highe sample: curro. tabledhmm valueWithArguments: {hight. nexts. nexto.}}} conde]]}} conde
		] tabled: #tabledhmm
			inputs: {prevt. states. observations}
	].	
	
			
	self assert: ([ :q | tabledhmm valueWithArguments: {hight. q. #(1 0) asCons.} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum closeTo: 
		((hight p * highe p) * ((hight p * (1-highe p)) + ((1-hight p) * (1-lowe p))))
		+ (((1-hight p) * lowe p) * (((lowt p * (1-highe p))) + ((1-lowt p) * (1-lowe p))))
		precision: 0.0001.
		
	
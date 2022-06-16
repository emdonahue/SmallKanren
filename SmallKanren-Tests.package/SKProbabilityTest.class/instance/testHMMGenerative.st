tests-hmm
testHMMGenerative
	| hmm shmm thmm size data |
	hmm := [ :prevt :states :observations | 
		{{states isEmptyo. observations isEmptyo}.
		{{states. observations} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
				{{currs === 0. prevt sample: 0. lowe sample: curro. hmm valueWithArguments: {lowt. nexts. nexto.}}.
				{currs === 1. prevt sample: 1. highe sample: curro. hmm valueWithArguments: {hight. nexts. nexto.}}} conde ]}} conde ].
	shmm := [ :prevt :states :observations | 
		{{states isEmptyo. observations isEmptyo}.
		{{states. observations} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
			prevt argmax: currs o: [ :st |
				{{st === 0. lowe sample: curro. shmm valueWithArguments: {lowt. nexts. nexto.}}.
				{st === 1. highe sample: curro. shmm valueWithArguments: {hight. nexts. nexto.}}} conde]]}} conde ].
	thmm := [ :prevt :states :observations | 
		[ :pt :ss :os | 
		{{ss isEmptyo. os isEmptyo}.
		{{ss. os} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
			pt argmax: currs o: [ :st |
				{{st === 0. lowe sample: curro. thmm valueWithArguments: {lowt. nexts. nexto.}}.
				{st === 1. highe sample: curro. thmm valueWithArguments: {hight. nexts. nexto.}}} conde]]}} conde
		] tabled: #tabledhmm
			inputs: {prevt. states. observations} ].	
		
	data := [ :x :n | n = 0 ifTrue: [ x === Cons empty ]
		ifFalse: [ x carCdro: [ :a :d | {{a === 0. a ===1} conde. {{d === Cons empty. 1 < n}. data value: d value: n-1} conde}]]].
	self assert: (([ :q | data value: q value: 5 ] asGoal run collect: #first) count: [ :d | | naive aggregated tabled |
			naive := [ :q | hmm valueWithArguments: {hight. q. d.} ] asGoal runStates reduce: [ :a :b | a likelihood > b likelihood ifTrue: a ifFalse: b ].
		aggregated := [ :q | shmm valueWithArguments: {hight. q. d.} ] asGoal runStates first.
		tabled := [ :q | thmm valueWithArguments: {hight. q. d.} ] asGoal runStates first.
		self assert: naive likelihood equals: aggregated likelihood.
		self assert: naive likelihood closeTo: tabled likelihood precision: 0.0001.
		true.
	]) equals: 2 + 4 + 8 + 16 + 32.
tests
testPerformanceHMM1D
	<script>
	| hmm lowe lowt highe hight thmm shmm times |
	hight := SKBernoulli new p: 0.7.
	lowt := SKBernoulli new p: 0.2.
	highe := SKBernoulli new p: 0.9.
	lowe := SKBernoulli new p: 0.4.
	hmm := shmm := thmm := nil.
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
		
	times := OrderedCollection new.
	(Character lf join:
		(((16 to: 16) collect: [ :l | | d |
			d := (Array new: l withAll: 1) asCons.
			{l. 
				"[ [ :q | hmm valueWithArguments: {hight. q. d.} ] asGoal run force ] timeToRun totalSeconds asFloat."
				[ [ :q | shmm valueWithArguments: {hight. q. d.} ] asGoal run force ] timeToRun totalSeconds asFloat.
				[ [ :q | thmm valueWithArguments: {hight. q. d.} ] asGoal run force ] timeToRun totalSeconds asFloat}.
		]) collect: [ :r | Character space join: r ])) inspect.
		"(Character lf asString , Character lf asString join: (times collect: [ :t | Character lf join: (t collect: [ :lt | Character tab join: lt ]) ])) inspect."
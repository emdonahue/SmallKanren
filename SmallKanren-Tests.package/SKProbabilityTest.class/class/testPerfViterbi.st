tests
testPerfViterbi
	<script>
	| lowe thmm lowt highe hight |
	hight := SKBernoulli new p: 0.7.
	lowt := SKBernoulli new p: 0.2.
	highe := SKBernoulli new p: 0.9.
	lowe := SKBernoulli new p: 0.4.
	thmm := nil.
	thmm := [ :prevt :states :observations | 
		[ :pt :ss :os | 
		{{ss isEmptyo. os isEmptyo}.
		{{ss. os} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
			pt argmax: currs o: [ :st |
				{{st === 0. lowe sample: curro. thmm valueWithArguments: {lowt. nexts. nexto.}}.
				{st === 1. highe sample: curro. thmm valueWithArguments: {hight. nexts. nexto.}}} conde]]}} conde
		] tabled: #tabledhmm
			inputs: {prevt. states. observations} ].	
			
		(ABBench bench: [[ :q | thmm valueWithArguments: {hight. q. (Array new: 10 withAll: 1) asCons.} ] asGoal run force]) inspect	.
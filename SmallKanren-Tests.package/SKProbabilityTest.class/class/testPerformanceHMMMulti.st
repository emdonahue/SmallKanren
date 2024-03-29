tests
testPerformanceHMMMulti
	<script>
	| hmm lowe lowt highe hight thmm shmm |
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
			prevt marginalizeo: [ :st |
				{currs === st.
				{{st === 0. lowe sample: curro. shmm valueWithArguments: {lowt. nexts. nexto.}}.
				{st === 1. highe sample: curro. shmm valueWithArguments: {hight. nexts. nexto.}}} conde}]]}} conde ].
	thmm := [ :prevt :states :observations | 
		[ :pt :ss :os | 
		{{ss isEmptyo. os isEmptyo}.
		{{ss. os} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
			pt marginalize: currs o: [ :st |
				{{st === 0. lowe sample: curro. thmm valueWithArguments: {lowt. nexts. nexto.}}.
				{st === 1. highe sample: curro. thmm valueWithArguments: {hight. nexts. nexto.}}} conde]]}} conde
		] tabled: #tabledhmm
			inputs: {prevt. states. observations} ].	
	"self halt."
	(Character lf join:
		(((1 to: 200 by: 3) collect: [ :l | | d | "200 agg => 5s"
		d := (Array new: 4 withAll: 1) asCons.
		{l. 
			[ (Array new: l withAll: [ :q | thmm valueWithArguments: {hight. q. d.} ]) asGoal runList force ] timeToRunWithoutGC asFloat / 1000.
			[ (Array new: l withAll: [ :q | shmm valueWithArguments: {hight. q. d.} ]) asGoal runList force ] timeToRunWithoutGC asFloat / 1000.
			l <= 4 ifTrue: [[ (Array new: l withAll: [ :q | hmm valueWithArguments: {hight. q. d.} ]) asGoal runList force ] timeToRunWithoutGC asFloat / 1000].
		}]) collect: [ :r | Character tab join: (r select: #isNotNil) ])) inspect.
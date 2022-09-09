tests-hmm
testHMMForwardBackwardExample
	"https://en.wikipedia.org/wiki/Forward%E2%80%93backward_algorithm#Example"
	| hmm t e start fbhmm |			
	self skip.
	"start := SKCategorical new probabilities: {#sunny->0.5. #rainy->0.5	} asDictionary.
	t := {#rainy->(SKCategorical new probabilities: {#rainy->0.7. #sunny->0.3} asDictionary).
		#sunny->(SKCategorical new probabilities: {#sunny->0.7. #rainy->0.3} asDictionary)} asDictionary.
	e := {#sunny->(SKCategorical new probabilities: {#umbrella->0.2. #noumbrella->0.8.		} asDictionary).
		#rainy->(SKCategorical new probabilities: {#umbrella->0.9. #noumbrella->0.1. } asDictionary)} asDictionary."
	
	start := SKCategorical new probabilities: {#healthy->0.6. #fever->0.4} asDictionary.
	t := {#healthy->(SKCategorical new probabilities: {#healthy->0.7. #fever->0.3} asDictionary).
		#fever->(SKCategorical new probabilities: {#healthy->0.4. #fever->0.6		} asDictionary)} asDictionary.
	e := {#healthy->(SKCategorical new probabilities: {#dizzy->0.1. #cold->0.4. #normal->0.5	} asDictionary).
		#fever->(SKCategorical new probabilities: {#dizzy->0.6. #cold->0.3. #normal->0.1} asDictionary)} asDictionary.		
	
	hmm := nil.
		hmm := [ :prevt :states :observations | 
			{{states isEmptyo. observations isEmptyo}.
			{{states. observations} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
				"prevt marginalize: currs o: [ :st |"
					{{currs === #healthy. prevt sample: #healthy. (e at: #healthy) sample: curro. hmm valueWithArguments: {t at: #healthy. nexts. nexto.}}.
					{currs === #fever. prevt sample: #fever. (e at: #fever) sample: curro. hmm valueWithArguments: {t at: #fever. nexts. nexto.}}.
					} conde]"]"}} conde
			].	
		
	fbhmm := nil.
	fbhmm := [ :prev :states :observations | 
	{{states isEmptyo. observations isEmptyo}.
	{{states. observations} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
		prev marginalize: currs o: [ :st |
			{(e at: st) sample: curro. fbhmm valueWithArguments: {t at: st. nexts. nexto}}.
			]]}} conde
	]."
			
	q := SKVar new.
	([ hmm valueWithArguments: {start. q	. #(normal cold dizzy) asCons.} ] asGoal runStates collect: [:s | {s => q. s likelihood exp}]) force asOrderedCollection inspect.
			
	"
	"self assert: [ :q | hmm valueWithArguments: {start. q	. #(normal cold dizzy) asCons.} ] asGoal runStates first likelihood exp closeTo: 0.01512 precision: 0.0001.
		
	self assert: [ :q | hmm valueWithArguments: {start. q	. #(normal cold dizzy) asCons.} ] asGoal run first first equals: #(healthy healthy fever) asCons."
		
	[ :q | fbhmm valueWithArguments: {start. q	. #(normal cold dizzy) asCons.} ] asGoal runList asOrderedCollection inspect.
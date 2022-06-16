tests-hmm
testHMMViterbiDecodingExamples
	"https://en.wikipedia.org/wiki/Viterbi_algorithm#Example"
	| hmm t e start |			
	
	start := SKCategorical new probabilities: {#healthy->0.6. #fever->0.4} asDictionary.
	t := {#healthy->(SKCategorical new probabilities: {#healthy->0.7. #fever->0.3} asDictionary).
		#fever->(SKCategorical new probabilities: {#healthy->0.4. #fever->0.6} asDictionary)} asDictionary.
	e := {#healthy->(SKCategorical new probabilities: {#dizzy->0.1. #cold->0.4. #normal->0.5	} asDictionary).
		#fever->(SKCategorical new probabilities: {#dizzy->0.6. #cold->0.3. #normal->0.1} asDictionary)} asDictionary.
		
	hmm := nil.
	hmm := [ :prev :states :observations | 
	{{states isEmptyo. observations isEmptyo}.
	{{states. observations} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
		prev argmax: currs o: [ :st |
			{(e at: st) sample: curro. hmm valueWithArguments: {t at: st. nexts. nexto}}.
			]]}} conde
	].
		
	self assert: [ :q | hmm valueWithArguments: {start. q	. #(normal cold dizzy) asCons.} ] asGoal runStates first likelihood exp closeTo: 0.01512 precision: 0.0001.
		
	self assert: [ :q | hmm valueWithArguments: {start. q	. #(normal cold dizzy) asCons.} ] asGoal run first first equals: #(healthy healthy fever) asCons.
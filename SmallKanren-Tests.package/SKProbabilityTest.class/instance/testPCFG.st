tests-pcfg
testPCFG
	| pcfg rules |
	
	pcfg := nil.
	pcfg := [ :g :parent :parse :str | 
		g argmaxo: [ :r |
			{{r === (parent cons: str). parse === r}.
				{parent. r. parse} match: #(_1 (_1 _ _) (_1 _ _)) o: [ :head :lhead :rhead :lchild :rchild :lstr :rstr |					
					{lstr append: rstr o: str.
					pcfg valueWithArguments: {g. lhead. lchild. lstr}.
					pcfg valueWithArguments: {g. rhead. rchild. rstr}.}
					]
			} conde
			]
		].	

	rules := SKCategorical new probabilities: 
		({#(DT the)->0.9. 
			#(DT cat)->0.1.
			#(NN the)->0.2.
			#(NN cat)->0.8.
			#(NP DT NN)->0.7.
			#(NP JJ NN)->0.3} collect: [ :r | r key asCons -> r value ]) asDictionary.

	self assert: [ :q | pcfg valueWithArguments: {rules. #NN. q. #(cat) asCons}] asGoal runList first first equals: #(NN cat) asCons.
	
	self assert: [ :q | pcfg valueWithArguments: {rules. #NN. q. #(cat) asCons}] asGoal runStates first likelihood equals: (rules logLikelihood: #(NN cat) asCons).
	
	self assert: [ :q | pcfg valueWithArguments: {rules. #NP. q. #(the cat) asCons}] asGoal runList first first equals: #(NP (DT the) (NN cat)) asConsR.
		
	self assert: [ :q | pcfg valueWithArguments: {rules. #NP. q. #(the cat) asCons}] asGoal runStates first likelihood equals: (rules logLikelihood: #(NP DT NN) asCons) + (rules logLikelihood: #(DT the) asCons) + (rules logLikelihood: #(NN cat) asCons).
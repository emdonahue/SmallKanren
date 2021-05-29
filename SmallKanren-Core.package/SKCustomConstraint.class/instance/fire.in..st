checking
fire: aVal in: aState
	<todo> "Requires runtime for full goal compliance. This is a hack."
	| v |
	v := (vars copyReplaceAll: {vars detect: [ :x | x isSKVar ]} with: {aVal}) 
		collect: [ :x | aState walk: x ].
	^ v detect: [ :x | x isSKVar ] ifFound: [ :x | aState add: x constraint: (self class new vars: v; block: block) ] ifNone: [ (block valueWithArguments: v) asGoal run: aState runtime: nil ].
	
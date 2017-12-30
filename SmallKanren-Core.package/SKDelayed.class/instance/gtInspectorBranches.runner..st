inspecting
gtInspectorBranches: aComposite runner: aRunner
	| vars |
	vars := Dictionary new.
	aComposite tree
		title: 'Query';
		allExpanded;
		children: [ :c | 
			(c isKindOf: SKGoal)
				ifTrue: #()
				ifFalse: [ c value goals: (vars at: c key) ] ];
		format: [ :v | 
			(v isKindOf: SKGoal)
				ifTrue: [ (v skPrintWithNames: aRunner varNames) , Character lf asString ]
				ifFalse: [ (v key skPrintWithNames: aRunner varNames) , ' ' , ((vars at: v key put: (SKVar new cons: SKVar new)) skPrintWithNames: aRunner varNames) ] ];
		send: [ :s | aRunner copy step ];
		display: [ self delayedVars ]
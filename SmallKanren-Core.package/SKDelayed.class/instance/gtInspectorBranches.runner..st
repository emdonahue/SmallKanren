inspecting
gtInspectorBranches: aComposite runner: aRunner
	| vars |
	"(v skPrintWithNames: aRunner varNames) , Character lf asString"
	vars := Dictionary new.
	aComposite tree
		title: 'Query';
		children: [ :c | 
			(c isKindOf: BlockClosure)
				ifTrue: [ #() ]
				ifFalse: [ (c isKindOf: SKGoal)
						ifTrue: [ c inspectorChildren ]
						ifFalse: [ (self constraints at: c) goals: (vars at: c) ] ] ];
		format: [ :v | 
			(v isKindOf: BlockClosure)
				ifTrue: [ v asString ]
				ifFalse: [ (v isKindOf: SKGoal)
						ifTrue: [ v inspectorFormat ]
						ifFalse: [ (v skPrintWithNames: aRunner varNames) , ' ' , ((vars at: v put: (SKVar new cons: SKVar new)) skPrintWithNames: aRunner varNames) ] ] ];
		send: [ :s | aRunner copy step ];
		display: [ self delayedVars ]
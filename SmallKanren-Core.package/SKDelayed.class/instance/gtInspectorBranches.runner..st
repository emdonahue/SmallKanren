inspecting
gtInspectorBranches: aComposite runner: aRunner
	aComposite tree
		title: 'Query';
		children: [ :c | 
			(c isKindOf: BlockClosure)
				ifTrue: [ #() ]
				ifFalse: [ (c isKindOf: SKGoal)
						ifTrue: [ c inspectorChildren ]
						ifFalse: [ c cdr goals: c car ] ] ];
		send: [ :s | aRunner copy step ];
		display: [ self suspendedVars ]
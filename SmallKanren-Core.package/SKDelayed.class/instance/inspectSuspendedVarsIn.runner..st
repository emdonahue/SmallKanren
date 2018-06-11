inspecting
inspectSuspendedVarsIn: aComposite runner: aRunner
	aComposite tree
		title: 'Delayed';
		children: [ :c | 
			(c isKindOf: BlockClosure)
				ifTrue: [ #() ]
				ifFalse: [ (c isKindOf: SKGoal)
						ifTrue: [ c inspectorChildren ]
						ifFalse: [ c isCons
								ifTrue: [ c cdr asArray	"goals: c car" ]
								ifFalse: [ c goals: c vars ] ] ] ];
		send: [ :s | aRunner copy stream: (self undelaystep: s cdr runner: aRunner) ];
		format: [ :s | 
			s isCons
				ifTrue: [ ' ' join: s cdr vars ]
				ifFalse: [ (s isKindOf: SKDelayedVar)
						ifTrue: [ s block asString ]
						ifFalse: [ s asString ] ] ];
		display: [ self suspendedVars asOrderedCollection collect: [ :v | v vars cons: v ] ]
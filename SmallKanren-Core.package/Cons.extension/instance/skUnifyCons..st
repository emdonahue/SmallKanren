*SmallKanren-Core
skUnifyCons: aCons
	^ self ifEmpty: SKFailure singleton ifNotEmpty: [ :s | s peek === aCons peek andUnify: s step with: aCons step ]
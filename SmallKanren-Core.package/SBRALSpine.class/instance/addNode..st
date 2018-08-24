adding
addNode: anElement
	^ self class 
		tree: (SBRALNode root: anElement left: tree right: rest tree)
		rest: rest rest.
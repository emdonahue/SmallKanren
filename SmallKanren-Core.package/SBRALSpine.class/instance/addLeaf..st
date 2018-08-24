adding
addLeaf: anElement
	^ self class 
		tree: (SBRALLeaf new element: anElement)
		rest: self.
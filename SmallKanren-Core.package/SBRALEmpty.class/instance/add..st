adding
add: anElement
	^ SBRALSpine
		tree: (SBRALLeaf new element: anElement)
		rest: self.
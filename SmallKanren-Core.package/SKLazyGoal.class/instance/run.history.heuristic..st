running
run: aState history: aName heuristic: aModel
	^ self
		run: aState
		name: (aModel extendBranch: aName withLazyLeaf: self tag)
		rnn: aModel
		vars: (block argumentNames collect: [ :name | SKTaggedVar new tag: name])
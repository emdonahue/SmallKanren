accessing
runner: aModel
	self halt.
	^ SKRunner new
		stream:
			(self
				incomplete:
					(SKState new
						history: aModel treeRoot)
				history: aModel treeRoot
				heuristic: aModel);
		model: aModel
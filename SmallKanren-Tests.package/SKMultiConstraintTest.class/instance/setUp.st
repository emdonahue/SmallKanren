running
setUp
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	multi := SKMultiConstraint new type: SKNumberConstraint singleton; disequality: (x=/=1) asConstraint; exclusion: (x excludes: 2) asConstraint
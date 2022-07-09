pathing
path: from to: to
	^ [ :f :t | (self arc: f to: t) | [ :path | (self arc: f to: path) & (self path: path to: t)]]
		tabled: #path
		inputs: 	{from. to}.
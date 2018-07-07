pathing
path: from to: to plan: aPlan
	^ [ :f :t :p | f === t & p isEmptyo | (p carCdrIn: [ :step :rest | (self arc: f to: step) & (self path: step to: t plan: rest) ]) ]
		tabled: #path
		inputs:
			{from.
			to.
			} outputs: {aPlan.}.
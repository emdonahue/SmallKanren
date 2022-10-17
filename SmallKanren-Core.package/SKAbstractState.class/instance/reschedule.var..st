scheduling
reschedule: fromVar var: toVar
	^ self schedule: (self schedule collect: [ :g | g replace: fromVar external: toVar])
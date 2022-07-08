debugging
reificationsOf: queryVars in: aBag
	^ (right reificationsOf: queryVars in: ((left reificationsOf: queryVars in: aBag)))
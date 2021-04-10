list
keyIsAbsento: aKey
	<todo> "Possibly move this onto match infrastructure?"
	^ [ :key :val :rest | 
	{{self isEmptyo.
	{(self caro: (key cons: val) cdro: rest).
	(key =/= aKey).
	(rest keyIsAbsento: aKey)}}} ] asGoal
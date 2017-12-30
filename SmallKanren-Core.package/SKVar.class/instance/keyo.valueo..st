list
keyo: aKey valueo: aValue
	^ [ :key :value :rest | 
	{(self caro: (key cons: value) cdro: rest).
	{{(key === aKey).
	(value === aValue)}.
	{(key =/= aKey).
	{(rest keyo: aKey valueo: aValue)}}}} ]
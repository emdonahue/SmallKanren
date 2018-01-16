checking
undelay: aVar bind: aStream
	^ aStream bind: (block value: (aStream walk: carVar) value: aVar) history: nil heuristic: SKInterleaving new
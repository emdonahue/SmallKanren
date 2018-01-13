checking
undelay: aVar bind: aStream
	^ aStream bind: (block value: aVar ) history: nil heuristic: SKInterleaving new
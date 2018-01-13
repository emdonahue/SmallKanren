checking
finUndelay: aVar bind: aStream
	^ (aStream unconstrain: aVar) bind: (block value: aVar) history: nil heuristic: SKInterleaving new
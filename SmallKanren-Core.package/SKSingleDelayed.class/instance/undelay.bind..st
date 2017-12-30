checking
undelay: aVar bind: aStream
	^ aStream undelay bind: (block value: aVar car value: aVar cdr) history: nil heuristic: SKInterleaving new
comparing
hash
	^ (self class hash xor: argv hash) xor: pseudoCounts hash
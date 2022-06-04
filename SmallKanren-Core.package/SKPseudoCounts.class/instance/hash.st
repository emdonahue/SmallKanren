comparing
hash
	^ (self class hash xor: pseudocounts hash) xor: likelihood hash.
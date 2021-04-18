debugging
hash
	^ self class hash bitXor: (left hash bitXor: right hash).
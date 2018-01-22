checking
undelay: aVar bind: aStream
	^ aStream 
		bind: (block value: aVar car value: aVar cdr)

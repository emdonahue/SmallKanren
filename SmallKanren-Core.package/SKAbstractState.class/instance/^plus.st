streaming
+ aStream
	"If this answer is already fully complete, just return it rather than interleaving."
	 self isIncomplete ifFalse: [ ^ aStream complete: self ].
	^ super + aStream.
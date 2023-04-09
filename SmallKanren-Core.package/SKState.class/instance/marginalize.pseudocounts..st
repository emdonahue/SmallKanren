probability
marginalize: aState pseudocounts: theCounts
	"Called for the last state emitted from a conditional. If no other states have ever returned through this marginalization, just return self."
	theCounts ifNotNil: [ 
		^ (self likelihood > aState likelihood ifTrue: self ifFalse: aState)
			copy pseudoCounts: theCounts + self pseudocounts ].
	
	
	
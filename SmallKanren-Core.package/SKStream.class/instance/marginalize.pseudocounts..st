probability
marginalize: aState pseudocounts: theCounts
	"A random stream beneath a marginalize goal should just create a marginalized stream to hold the pseudocounts in anticipation of more bubbling up from beneath."
	^ SKMarginalizeStream new state: aState; stream: self; pseudocounts: theCounts.
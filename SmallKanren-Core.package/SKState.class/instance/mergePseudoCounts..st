probability
mergePseudoCounts: aState
	"If the substitutions and constraints can be merged, merge the pseudocounts, otherwise leave the state as is."
	aState pseudoCounts ifNotEmpty: [ ^ self copy pseudoCounts: self pseudoCounts + aState pseudoCounts ].
	
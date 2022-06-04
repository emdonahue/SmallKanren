probability
addPseudoCounts: pseudoCounts
	"If the substitutions and constraints can be merged, merge the pseudocounts, otherwise leave the state as is."
	pseudoCounts ifNotNil: [ ^ self copy pseudoCounts: self pseudoCounts + pseudoCounts ].
	
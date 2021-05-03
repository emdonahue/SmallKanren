disequality
asDisequality
	<returns:#(OrC #SKDisequalityPair SKConjoinedDisequalities)>
	"Because this substitution builds disequalities as it goes, at the end it can simply return the collected constraints."
	^ deltas and: var disequality: val.
disequality
asDisequality
	<returns:#SKDisequality>
	"Because this substitution builds disequalities as it goes, at the end it can simply return the collected constraints."
	^ deltas andDisequals: val.
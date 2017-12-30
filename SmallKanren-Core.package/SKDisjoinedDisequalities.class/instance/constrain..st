merging
constrain: aState
	"Constrains aState by sequentially applying all disjoined Disequalities."
	^ (constraint constrain: aState) constrain: next
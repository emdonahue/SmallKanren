adding
add: anElement at: anIndex
	"Adds anElement at a non-existent index by extending with placeholders. anIndex is negative or 0, signifying the negative index at which it should be placed."
	<type: #VoidC type: #(OrC negative isZero) type: #SBRALSpine>
	^ ((1 to: anIndex negated) inject: self into: [ :sbral :i | 
		sbral add: SBRALPlaceholder placeholder ]) add: anElement
simplifying
simplifiedByAbsento: anAbsento
	"Check if returns are == and avoid creating new instances if so"
	| r |
	r := next simplifiedByAbsento: anAbsento. "Simplify rest of list." 
	(anAbsento excludes: excluded) ifTrue: [ ^ r ]. "If this link is redundant, return the rest."
	r == next ifFalse: [ ^ r absento: excluded ]. "Otherwise, check whether any changes were made to the rest of the list and either add a new link with the current information or just return the previous constraint up to this point."
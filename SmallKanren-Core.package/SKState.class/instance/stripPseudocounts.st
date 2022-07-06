tabling
stripPseudocounts
	"Creates a new state without pseudocounts for use in probabilistic tabling. Whatever pseudocounts it collects in the tabled relation will be cached in the table and averaged with pseudocounts of calling states to create complete pseudocounts."
	^ self class substitution: substitution constraints: constraints.
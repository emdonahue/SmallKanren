probability
stripPseudocounts 
	"Creates a new state without pseudocounts for use in probabilistic tabling. Whatever pseudocounts it collects in the tabled relation will be cached in the table and averaged with pseudocounts of calling states to create complete pseudocounts."
	<todo> "Is this necessary or can we just overwrite the pseudocounts when we combine states later?"
	self hasPseudocounts ifTrue: [ ^ self extend: state stripPseudocounts ]
presento
presento: aTerm in: aCons 
	"Called when we need to store future branches while exploring a free variable."
		^ self copy constraint: (constraint addPair: aCons).
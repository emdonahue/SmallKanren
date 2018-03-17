list
rember: anElt o: remainingElts
	| restWithoutElt |
	self halt.
	restWithoutElt := SKVar new.
	^ self isEmptyo & remainingElts isEmptyo
		|
			(self
				carCdrIn: [ :a :d | anElt === a & (remainingElts === d) | (anElt =/= a & (remainingElts === (a cons: restWithoutElt)) & (remainingElts rember: anElt o: restWithoutElt)) ])
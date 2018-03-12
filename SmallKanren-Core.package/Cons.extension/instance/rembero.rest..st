*SmallKanren-Core
rembero: anElt rest: remainingElts
	| restWithoutElt | 
	restWithoutElt := SKVar new.
	^ self isEmptyo & remainingElts isEmptyo | (self
		carCdrIn:
			[ :a :d | anElt === a & (remainingElts === d) | (anElt =/= a & (remainingElts === (a cons: restWithoutElt)) & (remainingElts rembero: anElt rest: restWithoutElt)) ])
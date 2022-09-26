laziness
eager: aVar in: aState

	"Called by the runtime to advance this part of the search tree. Generates a term to unify the free variable with and proceeds as if unification had occurred. The normal check procedure will remove the constraint."

	^ self
		  eager: aVar
		  val: self unificationTerm
		  in:
			  ((self
				    check: self unificationTerm
				    extendNoOccurs: aVar
				    in: aState) ifFailure: [ ^ SKStream failure ])
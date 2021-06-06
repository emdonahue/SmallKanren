merging
merge: aConstraint
	^ ((SKSubstitution empty unify: pattern noWalk: aConstraint pattern) 
		asGuarded: self fresh: aConstraint). 
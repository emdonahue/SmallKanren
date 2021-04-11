A State contains the Substitution and ConstraintStore and manages unification and constraint satisfaction. It is returned by Results as a successful single solution to the Goal.

Unification begins when a unification goal calls the State unifier with two variables/values. State walks them and then passes itself to the pair of walked values so they can decide amongst themselves whether the unification succeeded (and potentially, as in the case of Cons, run further unifications). Once they decide, they call back into State to handle constraint satisfaction using the constraining protocol.

Constraints begin when they are added from a goal using add:constraint:. If the store is empty, this immediately calls back in to extend the store with extend:constraint:. If it is not empty and the var is already constrained, the constraints are merged. 

When unifications occur, the unified terms call back in with the extendAndCheck messages, which both simply extend (with or without occurs check) and run the relevant constraints with runConstraintsOn.
Abstract class for all system Constraints that can be added to a State's ConstraintStore. 

Lifecycle of a constraint:
- A ConstraintGoal is #run: and generates the Constraint, which it runs with Constraint>>#checkAgainst:in:
- Constraint>>#checkAgainst:in: verifies that the value of the constrained variable satisfies the constraint, and returns either an Empty stream, the unmodified State, or the state extended with simplified constraints, using State>>#constrain:with: to extend the ConstraintStore.
- Eventually, Constraint>>#merge: will be called to merge the constraint with any existing constraints on its Var. Usually the constraint will call a type-specific accessor, such as #disequality:, to let the existing constraint handle the merge.
- If the existing constraint is of the same class, then it will define its own type-specific response to that message and perform the merge, returning the merged constraint (or a FailedConstraint if the merge fails, such as for TypeConstraints).
- If the existing constraint is a different class, it will promote itself using Constraint>>#asMultiConstraint and rely on MultiConstraint to implement the appropritate accessor.
- The final merged constraint will be called with Constraint>>#extend:in: to extend the State's ConstraintStore.
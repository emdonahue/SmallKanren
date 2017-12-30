The ExclusionConstraint ensures that a variable can never be equal to the excluded ground value and, if the variable unifies with a list or other data structure, the excluded value cannot appear anywhere inside that data structure. This is equivalent to the MiniKanren absento constraint.

Example: 
x excludes: #excluded
This means x can never unify with #excluded, (#excluded), (1 2 #excluded) or { #excluded }.
laziness
eager: aVar in: aState runtime: aRuntime
	<todo> "Confirm that no occurs checking is ok."
	"Called by the space tree to force any laziness before returning an answer. Since this is not part of the unifier, there is no value, and we must create a new value with fresh vars and add it to the state. Since this value is totally fresh, we don't need to unify or check constraints. We can just extend the state. Since this is also outside of the constraint checking system we must remove the constraint ourselves."
	^ self eager: aVar val: pattern 
		in: ((aState removeConstraint: aVar) extend: aVar noOccursCheck: pattern) 
		runtime: aRuntime.
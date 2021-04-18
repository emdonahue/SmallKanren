checking
unify: aVar with: aVal
	<todo> "test preemptive failure with a simple = check for unification"
	"Replace the var with the walked val from unification to avoid having to walk it again later. Note that the var may be right or left in the case of Var1 =/= Var2, which both get attached to Var1. Also note that attempting preliminary unification here would be nontrivial due to Cons being non equal but potentially unifiable."
	
	aVar = left ifTrue: [ 
		^ aVal = right ifTrue: [ ^ self rest ]
			ifFalse: [ self left: aVal right: right ]].
	aVar = right ifTrue: [ 
		^ aVal = left ifTrue: [ ^ self rest ]
			ifFalse: [ self left: left right: aVal ]].
	
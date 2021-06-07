reification
reify: aVar
	<todo> 
	"This probably breaks when a constraint contains references to other vars that themselves need to be reified. We may need to loop here until the reification stops changing."
	^ constraints reify: (substitution reify: aVar)
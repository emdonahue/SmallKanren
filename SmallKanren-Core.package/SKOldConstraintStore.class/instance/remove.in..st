checking
remove: aVar in: aState
	<type: #SKVar type: #SKPackage type: #integrityCheck>	
	"Drops the constraints on aVar from the ConstraintStore."
	^ aState copy constraints: (self remove: aVar)
simplifying
simplifiedBy: aConstraint
	"Efficiently traverse the internal structure of the absento and call back out to the constraint for specific logic."
	| r |
	r := rest simplifiedBy: aConstraint.
	(aConstraint simplifiesAbsento: absent) ifTrue: [ ^ r ]. 
	r == rest ifFalse: [ ^ r absento: absent ].
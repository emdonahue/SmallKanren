simplifying
simplifyFiniteDomain: aFD
	"Single disequalities can be subsumed by FDs by simply changing the domain."
	val isSKVar ifTrue: [ ^ aFD ].
	^ aFD remove: val.
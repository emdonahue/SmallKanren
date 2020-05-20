extending
extend: aVar with: aVal
	<todo>
	"All attempts to extend the substitution currently trigger an occurs check. This may not be necessary."
	
	^ self extend: aVar occursCheck: aVal
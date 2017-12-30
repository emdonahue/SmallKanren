debugging
integrityCheck
	<todo>
	"disable this for production"
	self keysAndValuesDo: [ :k :v | self assert: [ v isSatisfied not & v isUnsatisfiable not ] ]
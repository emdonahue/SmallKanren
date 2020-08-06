walking
walk: aVariable
	"Look up the ground value to which aVariable is ultimately bound"

	aVariable isSKVar
		ifFalse: [ ^ aVariable ].	 "We can only walk Vars"
	^ hashmap at: aVariable ifPresent: [ :v | self walk: v ] ifAbsent: aVariable
walking
walk: aVariable
	"Look up the ground value to which aVariable is ultimately bound"

	aVariable isSKVar ifFalse: [ ^ aVariable ].	 "Once we find a non-Var term, the walk is over."
	^ hashmap atKey: aVariable ifPresent: [ :v | self walk: v ] "Otherwise keep walking"
		ifAbsent: aVariable "until we find a free variable and return that." 
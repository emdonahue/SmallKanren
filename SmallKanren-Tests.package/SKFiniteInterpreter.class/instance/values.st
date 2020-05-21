parsing
values
	^ primitives associations
		inject: #()
		into: [ :prims :p | 
			p key = #var
				ifTrue: prims
				ifFalse: [ prims , p value ] ]
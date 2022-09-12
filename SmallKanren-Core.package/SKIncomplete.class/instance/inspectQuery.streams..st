inspecting
inspectQuery: queryVars streams: streamsByQuery
	| query |
	query := state reify: queryVars.
	streamsByQuery at: query 
		ifPresent: [ :streams | streams add: self ]
		ifAbsentPut: [ {self} asOrderedCollection ].
inspecting
inspectQuery: queryVars streams: streamsByQuery
	| query |
	query := self reify: queryVars.
	streamsByQuery at: query 
		ifPresent: [ :streams | streams add: self ]
		ifAbsentPut: [ {self} asOrderedCollection ].
growing
extendBranch: aHistory withCondeLeaf: aName
	^ self extendBranch: aHistory withLeaf: (aName bitXor: (aHistory ifEmpty: 0 ifNotEmpty: [ aHistory car ]))
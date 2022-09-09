as yet unclassified
testHash
	self assert: ( a >< a === ( a >< a ) ) runList first constraints isEmpty.
	self assert: ( a >< 1 === ( a >< 1 ) ) runList first constraints isEmpty.
	self assert: (( a >< x === ( b >< x ) ) runList first constraints contains: [ :cst | cst = (a hash: x) ]).
	self assert: (((a >< x) === ( b >< x ) ) runList first constraints contains: [ :cst | cst = (b hash: x) ]).
as yet unclassified
merge: aFreshClause
	| p a |
	p := aFreshClause pattern.
	p isSKVar ifTrue: [ | names | 
			names := block argumentNames.
			a := ((SKVar tag: names first) cons: (SKVar tag: names second)) ].
	p isCons ifTrue: [ a := p ifEmpty: [ ^ SKStream failure ] ifNotEmpty: [ :p2 | p2 ]]
		ifFalse: [ ^ SKStream failure ].
	^ SKGuardedDisjunction var: externals pattern: a clauses: (aFreshClause clauses copyWith: self).
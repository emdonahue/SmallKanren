converting
asOrderedCollection
	| elts |
	elts := OrderedCollection new.
	self do: [ :x | elts add: x ].
	^ elts
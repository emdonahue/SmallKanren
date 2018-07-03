accessing
streamsByQuery: queryVars
	| queries streams |
	queries := OrderedCollection new.
	streams := OrderedCollection new.
	self delayedStreams
		do: [ :s | 
			| r idx |
			idx := nil.
			r := s reify: queryVars.
			queries
				withIndexDo: [ :q :i | 
					(r skAlphaEquals: q)
						ifTrue: [ idx := i ] ].
			idx
				ifNil: [ queries add: r.
					streams add: s ]
				ifNotNil: [ streams at: idx put: s + (streams at: idx) ] ].
	^ queries with: streams collect: [ :q :s | q -> s ].
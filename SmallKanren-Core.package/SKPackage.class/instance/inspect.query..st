inspecting
inspect: aBuilder query: aQuery
	^ aBuilder newList items: (self reify: aQuery).
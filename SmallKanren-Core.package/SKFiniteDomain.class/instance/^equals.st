comparing
= aFiniteDomain
	self class = aFiniteDomain class ifFalse: [ ^ false ].
	^ (domain includesAll: aFiniteDomain domain) and: [ aFiniteDomain domain includesAll: domain ].
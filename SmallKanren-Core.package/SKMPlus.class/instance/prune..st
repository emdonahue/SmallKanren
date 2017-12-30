debugging
prune: anIndex
	anIndex <= left size "If the prune target is on the left,"
		ifTrue: [ anIndex = 1 "either return right if we have the prune target here,"
				ifTrue: [ ^ right ].
			^ self copy left: (left prune: anIndex) ]. "or otherwise recurse left."
	right size = 1 "If there is nowhere to recurse right, we are done."
		ifTrue: [ ^ left ].
	^ self copy right: (right prune: anIndex - left size) "Otherwise, recurse right."
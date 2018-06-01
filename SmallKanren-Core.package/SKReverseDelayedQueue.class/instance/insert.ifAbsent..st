adding
insert: aVar ifAbsent: aBlock
	^ self class forward: forward reverse: (reverse insert: aVar ifAbsent: [ ^ self class forward: (forward insert: aVar ifAbsent: aBlock) reverse: reverse ])
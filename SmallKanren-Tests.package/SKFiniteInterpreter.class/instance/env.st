accessing
env
	^ self vars asCons
		cons: (self constraints collect: [ :c | Cons empty ]) asCons cons
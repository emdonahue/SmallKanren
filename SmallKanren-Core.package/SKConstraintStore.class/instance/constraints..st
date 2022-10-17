constraining
constraints: aStore
	aStore ifEmpty: [ ^ state ].
	store == aStore ifTrue: [ ^ self ].
	store ifNotNil: [ ^ self class new state: state; constraints: aStore ].
	store := aStore.
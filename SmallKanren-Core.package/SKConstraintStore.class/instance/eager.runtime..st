laziness
eager: aState runtime: aRuntime
	| c vr |
	hashmap keysAndValuesDo: [ :k :v | v isLazy ifTrue: [ vr := k. c := v.] ].
	^ c eager: vr in: aState runtime: aRuntime.
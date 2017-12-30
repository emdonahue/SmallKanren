enumerating
keysAndValuesDo: aBlock
	hashmap associationsInject: nil into: [ :_ :a | aBlock value: a key value: a value ]
enumerating
keysAndValuesDo: aBlock

	hashmap associations
		inject: nil
		into: [ :_ :a | aBlock value: a key value: a value ]
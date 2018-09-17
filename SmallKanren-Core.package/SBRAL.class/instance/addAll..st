adding
addAll: aCollection
	^ aCollection inject: self into: [ :sbral :e | sbral add: e ]
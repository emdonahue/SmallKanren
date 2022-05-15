probability
maximizeModel: aModel
	^ aModel collect: [ :d | self maximize: d ].
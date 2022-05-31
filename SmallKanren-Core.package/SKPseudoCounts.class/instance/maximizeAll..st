probability
maximizeAll: aModel
	^ aModel collect: [ :d | self maximize: d ].
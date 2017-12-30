as yet unclassified
skPrintOn: aStream Labels: names
	type skPrintOn: aStream names: names.
	aStream nextPutAll: ', '.
	disequality skPrintOn: aStream names: names.
	aStream nextPutAll: ', '.
	exclusion skPrintOn: aStream names: names.
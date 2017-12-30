printing
skPrintOn: aStream names: theVarNames
	"Add self to the labeler and retrieve a unique tag number for printing purposes."

	^ theVarNames tagAndPrintVar: self on: aStream
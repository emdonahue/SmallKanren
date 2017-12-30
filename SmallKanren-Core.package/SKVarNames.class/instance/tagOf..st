printing
tagOf: aVar
	"Called by inspectors when writing the name of the variable to a column."

	| stream |
	stream := WriteStream on: (String new: 5).
	(self add: aVar) printTagOf: aVar on: stream.
	^ stream contents
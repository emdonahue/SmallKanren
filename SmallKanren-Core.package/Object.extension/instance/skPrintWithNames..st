*SmallKanren-Core
skPrintWithNames: aLabeler
	| s |
	s := WriteStream on: #().
	self skPrintOn: s names: aLabeler.
	^ '' join: s contents.
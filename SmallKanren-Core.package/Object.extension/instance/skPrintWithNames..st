*SmallKanren-Core
skPrintWithNames: aLabeler
	| s |
	s := WriteStream on: #().
	self printOn: s.
	^ '' join: s contents.
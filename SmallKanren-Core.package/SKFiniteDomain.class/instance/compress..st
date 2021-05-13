merging
compress: aFD
	"aFD has already been simplified to just the elements we lack, so we can just append them."
	aFD isFiniteDomain ifTrue: [ ^ aFD ].
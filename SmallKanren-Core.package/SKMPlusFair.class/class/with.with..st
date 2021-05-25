instance creation
with: aStream with: bStream
	^ self new streams: (FDSQueue with: aStream with: bStream).
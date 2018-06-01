instance creation
reverse: aForwardQueue
	^ self new forward: (self empty); reverse: aForwardQueue 
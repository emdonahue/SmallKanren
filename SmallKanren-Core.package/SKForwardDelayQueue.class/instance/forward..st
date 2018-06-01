accessing
forward: aForwardQueue
	^ SKReverseDelayedQueue new reverse: self; forward: aForwardQueue 
tests-waiting
testIsWaitingStream
	| e |
	e := 1 cons.
	self assert: (SKReusedStream new consumed: Cons empty; cache: Cons empty) isWaitingStream.
	self deny: (SKReusedStream new consumed: Cons empty; cache: e) isWaitingStream.
	self assert: (SKReusedStream new consumed: e; cache: e) isWaitingStream.